<?php 

    require_once('scripts/config.php'); // need to be logged in to view this page
    confirm_logged_in();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/main.css">
    <title>Welcome to your admin panel</title>
</head>
<body>

<div class="dashboard">

    <h1>Admin Dashboard</h1>
    <h3>Welcome <?php echo $_SESSION['user_name'];?></h3>
    <p>This is the admin dashboard</p>

    <nav>
        <ul>
            <li><a href="admin_createuser.php">Create User</a></li>
            <li><a href="admin_edituser.php">Edit User</a></li>
            <li><a href="admin_deleteuser.php">Delete User</a></li>
            <li><a href="admin_addmovie.php">Add A Product</a></li>
            <li><a href="admin_deleteproduct.php">Delete A Product</a></li>
            <li><a href="admin_updateproduct.php">Edit A Product</a></li>
            <li><a href="scripts/caller.php?caller_id=logout">Sign Out</a></li>
        </ul>
    </nav>

</div>
</body>
</html>