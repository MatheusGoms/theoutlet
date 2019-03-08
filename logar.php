<?php

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    echo 'foi';
} else {
    echo 'falhou';
}
mysqli_close($con);
exit;