<?php
// 配列を使ったランダムくじ引き
$input = "勇者,魔法使い,狼,遊び人,スライム,ドラゴン,魔王";
$member = explode(",", $input);

$member_num = count($member) - 1;
$key = rand(1, $member_num);

echo $member[$key];
?>
