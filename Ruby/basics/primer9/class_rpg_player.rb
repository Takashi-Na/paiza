class Player
  def initialize(name)
      @name = name
  end

  def attack(enemy)
      puts "#{@name}は#{enemy}を攻撃した"
  end
end

class Warrior < Player
  def attack(enemy)
      puts "#{@name}は#{enemy}を猛攻撃した！"
  end
end

teams = []
teams.push(Player.new("勇者"))
teams.push(Player.new("魔法使い"))
teams.push(Warrior.new("戦士"))

puts "=== パーティ攻撃 ==="
teams.each do |person|
    person.attack("スライム")
end