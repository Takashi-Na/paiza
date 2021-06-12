# RPGの攻撃シーン

def attack(person)
    puts "#{person}はスライムを攻撃した"
end

def output_ememy_hp(enemy_hp)
    puts "敵のHPは残り#{enemy_hp}です"
end

enemy_hp = gets.to_i
team = {"勇者" => 200, "戦士" => 150, "魔法使い" => 100}
team.each do |person, power|
    attack(person)
    # 敵の体力を減少させる
    enemy_hp -= power
    output_ememy_hp(enemy_hp)
end
