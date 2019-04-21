<?php


// function editProduct($id, $title, $username, $password){
//     include('connect.php');

//     $update_movie_query = 'UPDATE tbl_movies SET movies_title=:title, movies_storyline=:username,'; 
//     $update_movie_query .=' movies_cover=:password';
//     $update_movie_query .=' WHERE movies_id = :id'; 

//     $update_movie_set = $pdo->prepare($update_movie_query); 
//     $update_movie_set->execute(
//         array(
//             ':title'=>$title,
//             ':username'=>$username,
//             ':password'=>$password,
//             ':id'=>$id
//     )
// );
// }


function editProduct($id, $title, $cover, $story){
    include('connect.php');

    $update_movie_query = 'UPDATE tbl_movies SET movies_title=:title, movies_storyline=:cover,'; 
    $update_movie_query .=' movies_cover=:story';
    $update_movie_query .=' WHERE movies_id = :id'; 

    $update_movie_set = $pdo->prepare($update_movie_query); 
    $update_movie_set->execute(
        array(
            ':title'=>$title,
            ':cover'=>$cover,
            ':story'=>$story,
            ':id'=>$id
    )
);
}



function addMovie($cover, $title, $story, $genre){
  
    try{
    include('connect.php');

    // 2. Validate file
    $file_type = pathInfo($cover['name'], PATHINFO_EXTENSION);
    $accepted_types = array('gif', 'jpg', 'jpe', 'jpeg', 'png');
    if(!in_array($file_type, $accepted_types)) {
        throw new Exception('Wrong file type!');
    }

    // 3. Movie file around
    $target_path = '../images/' . $cover['name'];
    if(!move_uploaded_file($cover['tmp_name'], $target_path)) {
        throw new Exception('Failed to move uploaded file, check permission!');

    }
    

    $th_copy = '../images/TH_' . $cover['name'];
    if(!copy($target_path, $th_copy)) {
        throw new Exception('Failed to move copy file, check permission!'); 
    }
   
    // 4. Adding entries to database (both tbl_movies and tbl_mov_genre)
    $insert_movie_query = 'INSERT INTO tbl_movies(movies_cover, movies_title,';
    $insert_movie_query .=' movies_storyline)';
    $insert_movie_query .=' VALUES(:movies_cover, :movies_title,';
    $insert_movie_query .=' :movies_storyline)';

    $insert_movie = $pdo->prepare($insert_movie_query);
    $insert_result = $insert_movie->execute(
        array(
            ':movies_cover'    => $cover['name'],
            ':movies_title'    => $title,
            ':movies_storyline'    => $story,
        )
        );

        var_dump($insert_movie->debugDumpParams());
        if(!$insert_result){
            throw new Exception('Failed to insert the new product!');
        }

        $last_id = $pdo->lastInsertId();

        $insert_genre_query = 'INSERT INTO tbl_mov_genre(movies_id, genre_id) VALUES(:movies_id, :genre_id)';
        $insert_genre = $pdo->prepare($insert_genre_query);
        $insert_genre->execute(
            array(
                ':movies_id' => $last_id,
                ':genre_id' => $genre,
            )
            );

          if (!$insert_genre->rowCount()) {
                throw new Exception('Failed to set Genre!');
            }

    // 5. If all of above works fine, redirect user to index.php
            redirect_to('index.php');
    } catch(Exception $e){
        $error = $e->getMessage();
        return $error;
    }
}

?>