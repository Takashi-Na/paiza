<?php
// explode関数
$input = trim(fgets(STDIN));
$array = explode(",", $input);

print_r($array);

// count関数
echo count($array);
?>