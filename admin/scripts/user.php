<?php

function createUser($fname,$username,$password,$email){
    include('connect.php');

    //TO DO: the following query will create a new row in tbl_user table
    // with user_fname = $fname
    // user_name = $username
    // user_pass = $password
    // user_email = $email

    
    $create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email)'; 
    $create_user_query .= ' VALUES(:fname,:username,:password,:email)'; 

    $create_user_set = $pdo->prepare($create_user_query); 
    $create_user_set->execute(
        array(
            ':fname'=>$fname,
            ':username'=>$username,
            ':password'=>$password,
            ':email'=>$email
    )
);

if($create_user_set->rowCount()){ //PDOStatement:rowCount returns how many rows have been affected..  //if there are more than zero rows being affected 
    redirect_to('index.php');
}else{
    $message = 'Your hiring practices have failed you... this individual sucks...';
    return $message;
};
    //TO DO: redirect user to index.php if success
    // otherwise return a message
}

function editUser($id, $fname, $username, $password, $email){
    include('connect.php');
    //TODO: use the createUser function as reference to build this function so that it can updte the user

    //when update successfully, redirect user to index.php

    //otherwise, return an error message

    $update_user_query = 'UPDATE tbl_user SET user_fname=:fname, user_name=:username,'; 
    $update_user_query .=' user_pass=:password, user_email=:email';
    $update_user_query .=' WHERE user_id = :id'; 

    $update_user_set = $pdo->prepare($update_user_query); 
    $update_user_set->execute(
        array(
            ':fname'=>$fname,
            ':username'=>$username,
            ':password'=>$password,
            ':email'=>$email,
            ':id'=>$id
    )
);

if($update_user_set->rowCount()){ //PDOStatement:rowCount returns how many rows have been affected..  //if there are more than zero rows being affected 
    redirect_to('index.php');
}else{
    $message = 'Your profile has not been edited ';
    return $message;
};

}

function deleteUser($id){
    //TODO: 
    //1. Build the SQL query to delete user where user_id = $id 
    //2. Run the SQL query 
    //3. If the execution is successful. redirect user to index.php 
    //Otherwise return an error message

    //4. *(Dev) What's the security concern here???

    include('connect.php');
    $delete_user_query = 'DELETE FROM tbl_user WHERE user_id = :id';
    $delete_user = $pdo->prepare($delete_user_query);
    $delete_user->execute(
        array(
            ':id'=>$id
        )
    );

    if($delete_user->rowCount()){
        redirect_to('../index.php');
    }else{
        $message = 'Not deleted yet..';
        return $message;
    }
}


function deleteProduct($id){


    include('connect.php');
    $delete_product_query = 'DELETE FROM tbl_movies WHERE movies_id = :id';
    $delete_product = $pdo->prepare($delete_product_query);
    $delete_product->execute(
        array(
            ':id'=>$id
        )
    );

    if($delete_product->rowCount()){
        redirect_to('../index.php');
    }else{
        $message = 'Not deleted yet..';
        return $message;
    }
}



?>