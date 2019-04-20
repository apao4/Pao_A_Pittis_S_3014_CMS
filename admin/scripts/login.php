<?php

function login($username, $password, $ip){
    require_once('connect.php');
    //check if username exists

    //To Do: finish the following query
    //that counts how many entries from tbl_user
    //that has user_name match $username

    $check_exist_query = 'SELECT COUNT(*) FROM tbl_user WHERE user_name = :username';

    // echo $check_exist_query;
    $user_set = $pdo->prepare($check_exist_query);
    $user_set->execute(
        array(
            ':username'=>$username
        )
    );

    //TODO: fill the following lines with the proper SQL query so that it can get all rows where 
    //user_name = $username and user_pass = $password
    if($user_set->fetchColumn()>0){
        $get_user_query = 'SELECT * FROM tbl_user WHERE user_name = :username AND user_pass = :password';

        $get_user_set = $pdo->prepare($get_user_query);

        $get_user_set->execute(
            array(
                ':username'=>$username,
                ':password'=>$password
            )
        );

        while($found_user = $get_user_set->fetch(PDO::FETCH_ASSOC)){
            $id = $found_user['user_id'];
            $_SESSION['user_id'] = $id; //stores the user id in the session
            $_SESSION['user_name'] = $found_user['user_name']; //stores the username in the session
// you could store everything, but then you would have to hard code everything

            //update our login IP

            //TO DO: use the right SQL query to update the user_ip column to $ip within tbl_user table
            // don't forget to bind it...
            $update_ip_query = 'UPDATE tbl_user SET user_ip=:id WHERE user_id=:id'; //can use user_name or user_id i think // we need to bind it now
            $update_ip_set = $pdo->prepare($update_ip_query);
            $update_ip_set->execute(
                array(
                    ':ip'=>$ip,
                    ':id'=>$id
                )
            );
        }

        if(empty($id)){
            $message = 'Login Failed!';
            return $message;
        }

            // echo 'User ID: '.$id. 'Logged in!';

        redirect_to('index.php');
    }else{
        $message = 'Login Failed!';
        return $message;
    }
}
