<?php
// 標準入力から3行分の入力を配列に代入する
for($i=0; $i < 3; $i++){
    $team[] = trim(fgets(STDIN));
}
// $team の冒頭の要素を削除
unset($team[0]);

print_r($team);
?>