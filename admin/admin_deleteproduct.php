<?php
    require_once('scripts/config.php');
    confirm_logged_in();

  
    $gen_tbl = 'tbl_movies';
    $products = getAll($gen_tbl);
    
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Delete A Product</title>
</head>
<body>
    <h2>Delete a Product</h2>
<table>
    <thead>
    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <?php while($product = $products->fetch(PDO::FETCH_ASSOC)):?>
    <tr>
        <td><?php echo $product['movies_id'];?></td>
        <td><?php echo $product['movies_title'];?></td>
        <td><a href="scripts/caller.php?caller_id=deleteProduct&id=<?php echo $product['movies_id'];?>">Delete Product</a></td>
    </tr>
<?php endwhile; ?>
    </tbody>
</table>
</body>
</html>