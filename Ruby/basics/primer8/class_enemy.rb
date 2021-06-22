class Enemy
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def attack()
    puts "#{@enemy}は勇者を攻撃した"
  end
end

slime = Enemy.new("スライム")
slime.attack()

enemies = []
enemies.push(Enemy.new("スライム"))
enemies.push(Enemy.new("ドラゴン"))
enemies.push(Enemy.new("ゴブリン"))
enemies.push(Enemy.new("魔王"))

enemies.each do |enemy|
  enemy.attack()
end