<!--To delete users:
1. Make the page password protected - done (the confirm log in thing)
2. Pull all of the users down 
3. Figure out how to delete a user -->

<?php 
    require_once('scripts/config.php');
    confirm_logged_in(); //this is how we put the page under password protectiin 

    //TODO: pull all users frm tbl_user. save the result to be an array $users 

    $tbl = 'tbl_user';
    $users = getAll($tbl); 
    //^ this will get all the users 

    
    //whenever you call fetch in the IF section, itll just try to get the first row from the table. but if your results contain multiple rows, put it into the WHILE section
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Delete User</title>
</head>
<body>
    <h2>Delete An Account</h2>
<table>
    <thead>
    <tr>
        <th>User ID</th>
        <th>User Name</th>
        <th>User Email</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <?php while($user = $users->fetch(PDO::FETCH_ASSOC)):?>
    <tr>
        <td><?php echo $user['user_id'];?></td>
        <td><?php echo $user['user_fname'];?></td>
        <td><?php echo $user['user_email'];?></td>
        <td><a href="scripts/caller.php?caller_id=delete&id=<?php echo $user['user_id'];?>">Delete User</a></td>
    </tr>
<?php endwhile; ?>
    </tbody>
</table>
    <!--No one really uses table anymore but we should-->
</body>
</html>