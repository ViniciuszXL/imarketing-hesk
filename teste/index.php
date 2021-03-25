<?php

    $filename = '/var/www/oie.txt';
    $destination = '/var/www/teste/other_folder/';

    if (file_exists($filename)) {
        echo 'File exists! - ';
    } else {
        echo 'File not exists! - ';
    }

    echo 'Filename is ' . $filename . ' - ';
    echo 'Destination is ' . $destination . ' - ';

    if (rename($filename, $destination)) {
        echo 'Successfully moved oie.txt to other_folder! [1] - ';
    } else {
        echo 'An error ocurred in move the oie.txt to other_folder! [1] - ';
    }

    if (move_uploaded_file($filename, $destination)) {
        echo 'Successfully moved oie.txt to other_folder! [2] - ';
    } else {
        echo 'An error ocurred in move the oie.txt to other_folder! [2] - ';
    }

?>