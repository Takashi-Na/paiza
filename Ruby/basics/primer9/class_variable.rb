class Player
  @@charactor_count = 0
  def self.charactor_count()
  @@charactor_count
  end

  def initialize(name)
    @name = name
    @@charactor_count += 1
    puts "#{@@charactor_count}番目のプレイヤー、#{@name}が登場した。"
  end

  def attack(enemy)
    puts "#{@name}は、#{enemy}を攻撃した！"
  end
end

class Wizard < Player
  def initialize()
    super("魔法使い")
  end

  def attack(enemy)
    spell()
    puts "#{@name}は、#{enemy}に炎を放った！"
  end

  private

  def spell()
    puts "シャラララーン"
  end
end


puts "=== パーティでスライムと戦う ==="
hero   = Player.new("勇者")
warrior = Player.new("戦士")
wizard = Wizard.new()
party = [hero, warrior, wizard]

party.each do |player|
  player.attack("スライム")
end

puts "#{Player.charactor_count()}人で、スライムを攻撃した。"