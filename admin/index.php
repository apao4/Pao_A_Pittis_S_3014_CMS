<?php 

//To Do: Login Needed
    require_once('scripts/config.php');
    confirm_logged_in();


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome to your admin panel</title>
</head>
<body>

    <h1>Admin Dashboard</h1>
    <h3>Welcome <?php echo $_SESSION['user_name'];?></h3> <!-- this is how you read information from a session -->
    <p>This is the admin dashboard</p>

    <nav>
        <ul>
            <li><a href="admin_createuser.php">Create User</a></li>
            <li><a href="admin_edituser.php">Edit User</a></li>
            <li><a href="admin_deleteuser.php">Delete User</a></li>
            <li><a href="scripts/caller.php?caller_id=logout">Sign Out</a></li>
            <li><a href="admin_addmovie.php">Add Movie</a></li>
        </ul>
    </nav>
</body>
</html>