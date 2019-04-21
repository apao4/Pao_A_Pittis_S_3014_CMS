<?php require_once('admin/scripts/config.php'); 

if(isset($_GET['id'])){
	$tbl = 'tbl_movies';
	$col = 'movies_id';
	$value = $_GET['id'];
	$results = getSingle($tbl, $col, $value);
}else{
	
}
?>

<!doctype html>
<html>
<head>
	<meta charset='utf-8'>
	<title>Sport Chek CMS</title>
	<link href="https://fonts.googleapis.com/css?family=Fredoka+One" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<?php include('templates/header.html'); ?>

<div>
	<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
		<h2><?php echo $row['movies_title'];?></h2>
		<img id="imgCovers" src="images/<?php echo $row['movies_cover'];?>" alt="<?php echo $row['movies_title'];?>"> 
		<p class="info"> <?php echo $row['movies_storyline'];?> </p> 
	
	<?php endwhile; ?>
</div>

<?php include('templates/footer.html');?>
</body>
</html>