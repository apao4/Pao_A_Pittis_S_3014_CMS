<?php  require_once('scripts/config.php');

if(isset($_GET['id'])){
	$tbl = 'tbl_movies';
	$col = 'movies_id';
	$value = $_GET['id'];
	$results = getSingle($tbl, $col, $value);
}else{
	
}
?>

<?php

if(isset($_POST['submit'])){
    $title = trim($_POST['title']);
    $cover = trim($_POST['cover']);
    $story = trim($_POST['story']); 
    $id = trim($_POST['id']); 

    //Validation
    if(empty($story)){
        $message = 'Please fill out the required fields';
    }else{
        //do the edit
        $result = editProduct($id, $title, $cover, $story);
        $message = 'Data seems alright...';
    }
}


?>



<h2>Edit Product</h2>

<?php if(!empty($message)):?> 
    <p><?php echo $message;?></p>
<?php endif;?>

<?php if($found_movie = $results->fetch(PDO::FETCH_ASSOC));?> 

<form action="admin_editproduct.php" method="post"> 

        <label for="id">Product ID:</label>
        <input type="text" id="id" name="id" width="100%" value="<?php echo $found_movie['movies_id'];?>"><br><br>

        <label for="title">Product Name:</label>
        <input type="text" id="title" name="title" width="100%" value="<?php echo $found_movie['movies_title'];?>"><br><br>

        <label for="cover">Product Image:</label>
        <input type="text" id="cover" name="cover" width="100%" value="<?php echo $found_movie['movies_cover'];?>"><br><br>

        <label for="story">Product Description:</label>
        <input type="text" id="story" name="story" width="100%" value="<?php echo $found_movie['movies_storyline'];?>"><br><br>

        <button type="submit" name="submit">Edit Product</button>
</form>
