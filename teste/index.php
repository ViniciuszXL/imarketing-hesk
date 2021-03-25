<?php

    $filename = '/var/www/oie.txt';
    $destination = '/var/www/teste/other_folder';

    if (move_uploaded_file($filename, $destination)) {
        echo 'Successfully moved oi.txt to other_folder!';
    } else {
        echo 'An error ocurred in move the oi.txt to other_folder!';
    }

?>