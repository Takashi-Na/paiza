<?php
// 標準入力が空で無ければループする
while($input = fgets(STDIN)){
    // 配列に$inputの値を追加
    $array[] = trim($input);
}
print_r($array);

?>