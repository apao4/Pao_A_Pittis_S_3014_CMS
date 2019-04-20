<?php
    require_once('scripts/config.php');

    confirm_logged_in(); //makes this page only accessible to those who are logged in
    $id = $_SESSION['user_id']; // stores the user id from a session?

    $tbl = 'tbl_user';
    $col = 'user_id';

    // TO DO: Pull all user columns from tbl_user where user_id = $id
    // hint: this is more than just a SQL query...
    // this is one solution: (you repeat yourself a lot though)

    //include('./scripts/connect.php');
    // $query = 'SELECT * FROM '.$tbl.' WHERE '.$col.' = '.$id;
    // $runQuery = $pdo->query($query);
    // $found_user = $runQuery->fetch(PDO::FETCH_ASSOC); 
    // var_dump($found_user);
    // exit;
    
    //this is another solution that only takes you one line...
    $found_user_set = getSingle($tbl, $col, $id); //passing the right parameter inside  // getSingle is from the read.php file
    
    if(is_string($found_user_set)){
        $message = 'failed to get user info';
    }
    
   
    // var_dump($found_user);
    // exit;


    if(isset($_POST['submit'])){
        $fname = trim($_POST['fname']);
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        $email = trim($_POST['email']);

        //Validation
        if(empty($email) || empty($password) || empty($email)){
            $message = 'Please fill out the required fields';
        }else{
            //do the edit
            $result = editUser($id, $fname, $username, $password, $email);
            $message = 'Data seems alright...';
        }
    }

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Edit User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>

<h2>Edit User</h2>

<?php if(!empty($message)):?> <!-- this was copy and pasted from admin_login, it's error message I think from above -->
    <p><?php echo $message;?></p>
<?php endif;?>

<?php if($found_user = $found_user_set->fetch(PDO::FETCH_ASSOC));?> <!-- this was cut from above somewhere-->

<form action="admin_edituser.php" method="post"> 
        <label for="first-name">First Name:</label>
        <input type="text" id="first-name" name="fname" value="<?php echo $found_user['user_fname'];?>"><br><br>

        <label for="username">User Name:</label>
        <input type="text" id="username" name="username" value="<?php echo $found_user['user_name'];?>"><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<?php echo $found_user['user_email'];?>"><br><br>

        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value="<?php echo $found_user['user_pass'];?>"><br><br>

        <button type="submit" name="submit">Edit User</button>
</form>
    
</body>
</html>