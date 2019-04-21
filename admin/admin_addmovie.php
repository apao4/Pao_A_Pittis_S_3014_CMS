<?php
    require_once('scripts/config.php');
    confirm_logged_in();

    // TO DO: 1. pull all genre from tbl_genre
    $gen_tbl = 'tbl_genre';
    // 2. save the results into an array $movie_categories
    $movie_categories = getAll($gen_tbl);
    
    if(isset($_POST['submit'])){
        // var_dump($_POST);
        // var_dump($_FILES['cover']);
        $cover = $_FILES['cover'];
        $title = $_POST['title'];
        $year = $_POST['year'];
        $run = $_POST['run'];
        $story = $_POST['story'];
        $trailer = $_POST['trailer'];
        $release = $_POST['release'];
        $genre = $_POST['genList'];
        $result = addMovie($cover, $title, $year, $run, $story, $trailer, $release, $genre);
        $message = $result;
    }

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add A Product</title>
</head>
<body>
<?php if(!empty($message)):?>
<p><?php echo $message;?></p>
<?php endif;?>
    <form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
        <label for="cover">Product Image:</label>
        <input type="file" name="cover" id="cover" value=""><br><br>

        <label for="title">Product Title:</label>
        <input type="text" name="title" id="title" value=""><br><br>

        <label for="year">Movie Year:</label>
        <input type="text" name="year" id="year" value=""><br><br>

        <label for="run">Movie Runtime:</label>
        <input type="text" name="run" id="run" value=""><br><br>

        <label for="trailer">Movie Trailer:</label>
        <input type="text" name="trailer" id="trailer" value=""><br><br>

        <label for="release">Movie Release:</label>
        <input type="text" name="release" id="release" value=""><br><br>

        <label for="story">Product Description:</label>
        <textarea name="story" id="story"></textarea><br><br>

        <label for="genlist">Category:</label>
        <select name="genList" id="genlist">
            <option>Please Select a Product Category...</option>
            <!-- To Do: 3. run a loop within $movie_categories and echo each genre to be proper HTML in here -->
            <?php while($movie_category = $movie_categories->fetch(PDO::FETCH_ASSOC)): ?>
            <option value="<?php echo $movie_category['genre_id'];?>">
                <?php echo $movie_category['genre_name']; ?>
            </option>
            <?php endwhile; ?>

        </select><br><br>

        <button type="submit" name="submit">Add Product</button>
    </form>
</body>
</html>
