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
	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<?php include('templates/header.html'); ?>

<div id="moreDetails">
	<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
	<img id="imgCoverss" src="images/<?php echo $row['movies_cover'];?>" alt="<?php echo $row['movies_title'];?>"> 
	<div id="detailTexts">
		<h2 class="titleD"><?php echo $row['movies_title'];?></h2>
		<p class="info"> <?php echo $row['movies_storyline'];?> </p> 
</div>
	
	<?php endwhile; ?>
</div>

<?php include('templates/footer.html');?>
</body>
</html>