<?php

    $filename = '/var/www/oie.txt';
    $destination = '/var/www/html/oie.txt';

    chmod($filename, 777);
    chmod($destination, 777);

    if (file_exists($filename)) {
        echo 'File exists! - ';
    } else {
        echo 'File not exists! - ';
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