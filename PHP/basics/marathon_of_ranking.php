<?php
$place = rand(1, 5); // 順位を$placeに数字で代入
echo "placeの中身:".$place." \n";
if($place == 1){
    // 1位だったときの処理
    echo "優勝";
}else{
    // それ以外だったときの処理
    echo $place."位";
}
?>
