<?php

    $filename = '/var/www/oie.txt';
    $destination = '/var/www/teste/other_folder';

    echo 'Filename is ' . $filename . '\n';
    echo 'Destination is ' . $destination . '\n';

    if (move_uploaded_file($filename, $destination)) {
        echo 'Successfully moved oie.txt to other_folder!';
    } else {
        echo 'An error ocurred in move the oie.txt to other_folder!';
    }

?>