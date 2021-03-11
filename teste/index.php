<?php 

$link = mysqli_connect('localhost', 'root', '!M@rketingAlpDb', 'helpdesk');

if (!$link) {
    echo 'MySQL not connected!';
} else {
    echo 'MySQL is connected!';
}

mysqli_close($link);

?>