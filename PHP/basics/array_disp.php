<?php
// 標準入力から1行取得し$inputに代入
$input = trim(fgets(STDIN));

// explodeで$inputの文字列を分割し$arrayに配列として代入
$array = explode(",", $input);

// $arrayの要素数を数えて$numに代入
$num = count($array);

// $numの数だけループして$arrayから
// 要素を一つづつ取り出す
for ($i = 0; $i < $num; $i++) {
     echo $array[$i]."\n";
}

?>
