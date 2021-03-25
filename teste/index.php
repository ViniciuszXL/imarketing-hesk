<?php

    $filename = '/var/www/oie.txt';
    if (is_writable($filename)) {
        echo 'writable';
    } else {
        echo 'NOT writable';
    }

?>