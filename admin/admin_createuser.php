<?php
    require_once('scripts/config.php');

    //page under protection
    confirm_logged_in(); //this will only let people who are logged in see the page

    if(isset($_POST['submit'])){
        //do some preprocess for the data //this is validating the information the user submits
        //can do more research here

        //trimming the accidental spaces that are accidentally added before or after
        //basically it's just elminating spaces

        $fname = trim($_POST['fname']);
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        $email = trim($_POST['email']);

        //validation
        //just making username, password, email required... can also check other areas like username
        //check if email is actually an email - look at contact form for that
        //you can do all kinds of validations here...this is just basic

        if(empty($username) || empty($password) || empty($email)){
            $message = 'Please fill the required fields';
        }else{
            $result = createUser($fname, $username, $password, $email); //going to create the function createUser

            $message = 'Data seems alright...';
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Create User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<link rel="stylesheet" type="text/css" media="screen" href="main.css" />-->
    <!--<script src="main.js"></script>-->
</head>
<body>

<?php if(!empty($message)):?> <!-- this was copy and pasted from admin_login, error message -->
    <p><?php echo $message;?></p>
<?php endif;?>

    <h2>Create User</h2>
    <form action="admin_createuser.php" method="post">
        <label for="first-name">First Name:</label>
        <input type="text" id="first-name" name="fname" value=""><br><br>

        <label for="username">User Name:</label>
        <input type="text" id="username" name="username" value=""><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value=""><br><br>

        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value=""><br><br> <!-- something about type=text here? -->

        <button type="submit" name="submit">Create User</button>
    </form>
    
</body>
</html>