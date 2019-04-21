<?php
    require_once('config.php');
    
    if(isset($_GET['caller_id'])){
        $action = $_GET['caller_id'];

        switch($action){
            case 'logout':
                logged_out();
                break;

            case 'delete':
                $id = $_GET['id'];
                deleteUser($id);
                break;

                case 'deleteProduct':
                $id = $_GET['id'];
                deleteProduct($id);
                break;
        }
    }