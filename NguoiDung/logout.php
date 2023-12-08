<?php
    session_start(); // Start the session

    // Check if the user is logged in
    if (isset($_SESSION['username'])) {
        // Unset all of the session variables
        $_SESSION = array();

        // Destroy the session
        session_destroy();

        // Redirect to the home page or any other page after logout
        header("Location: ../Khach/mainPage.php"); 
        exit();
    }
    header("Location: ../Khach/mainPage.php"); 
?>