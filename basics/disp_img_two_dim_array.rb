# 2次元配列で画像を表示する

# 画像用配列
players_img = [
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Empty.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Dragon.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Crystal.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Hero.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Heroine.png"]

# 配置データを読み込み
team = []
while line = gets
    line.chomp!
    team.push(line.split(","))
end

# 配列データに合わせて表示する
print "<table>"
team.each do |line|
    print "<tr>"
    line.each do |obj|
        print "<td><img src = '#{players_img[obj.to_i]}'></td>"
    end
    puts "</tr>"
end
print "</table>"