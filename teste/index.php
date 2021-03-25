<?php

    $filename = '/var/www/oie.txt';
    $destination = '/var/www/teste/html/oie.txt';

    if (file_exists($filename)) {
        echo 'File exists! - ';
    } else {
        echo 'File not exists! - ';
    }

    if (file_exists($destination)) {
        echo 'File in destination exists - ';
    } else {
        echo 'File in destination not exists! Creating... - ';
    }

    echo 'Filename is ' . $filename . ' - ';
    echo 'Destination is ' . $destination . ' - ';

    if (rename($filename, $destination)) {
        echo 'Successfully moved oie.txt to html! [1] - ';
    } else {
        echo 'An error ocurred in move the oie.txt to html! [1] - ';
    }

    if (move_uploaded_file($filename, $destination)) {
        echo 'Successfully moved oie.txt to html! [2] - ';
    } else {
        echo 'An error ocurred in move the oie.txt to html! [2] - ';
    }

?>