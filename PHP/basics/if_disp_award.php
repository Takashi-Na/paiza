<?php
$place = rand(1,5); // 順位を1〜5の範囲でランダムに作られた数字を$placeに代入
echo "placeの中身:".$place."\n";
if($place == 1){
  // 1位だったときの処理
  echo "金賞";
}elseif($place == 2){
  // 1位だったときの処理
  echo "銀賞";
}elseif($place == 3){
  // 1位だったときの処理
  echo "銅賞";
}else{
  // それ以外だったときの処理
  echo $place."位";
}
?>