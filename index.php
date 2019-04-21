<?php require_once('admin/scripts/config.php'); 

if(isset($_GET['filter'])){
	$tbl = 'tbl_movies';
	$tbl_2 = 'tbl_genre';
	$tbl_3 = 'tbl_mov_genre';
	$col = 'movies_id';
	$col2 = 'genre_id';
	$col3 = 'genre_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl, $tbl_2, $tbl_3, $col, $col2, $col3, $filter);
}else{
	$results = getAll('tbl_movies');
}
?>

<!doctype html>
<html>
<head>
	<meta charset='utf-8'>
	<title>Sport Chek CMS</title>
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<?php include('templates/header.html'); ?>

<div class="cont">
	<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>

	<li>
		<img id="imgCovers" src="images/<?php echo $row['movies_cover'];?>" alt="<?php echo $row['movies_title'];?>"> <!-- image -->
		<h2 class="title"> <?php echo $row['movies_title'];?> </h2> <!-- Product Title -->
		<p class="info"> <?php echo $row['movies_storyline'];?> </p> <!-- Details -->
		<a id="more" href="details.php?id=<?php echo $row['movies_id'];?>"><p>More Details</p></a>  <!-- link to more details -->
		<!-- <a id="more" href="admin/admin_editproduct.php?id=<?php echo $row['movies_id'];?>"><p>Edit Product</p></a> -->

	<?php endwhile; ?>
	</li>
</div>

<?php include('templates/footer.html');?>
</body>
</html>