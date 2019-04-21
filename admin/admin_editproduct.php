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
    $fname = trim($_POST['title']);
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    //Validation
    if(empty($password)){
        $message = 'Please fill out the required fields';
    }else{
        //do the edit
        $result = editProduct($id, $title, $username, $password);
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
        <label for="first-name">Product Name:</label>
        <input type="text" id="first-name" name="title" value="<?php echo $found_movie['movies_title'];?>"><br><br>

        <label for="username">Product Image:</label>
        <input type="text" id="username" name="username" value="<?php echo $found_movie['movies_cover'];?>"><br><br>

        <label for="password">Product Description:</label>
        <input type="text" id="password" name="password" value="<?php echo $found_movie['movies_storyline'];?>"><br><br>

        <button type="submit" name="submit">Edit Product</button>
</form>
