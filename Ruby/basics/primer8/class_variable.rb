# クラスで変数を管理する
class Player
  attr_accessor :job
  def initialize(job)
    @job = job
  end
  def work()
      puts "#{@job}は荒野を歩いていた。"
  end

  def attack(ememy)
    puts "勇者は#{enemy}を攻撃した。"
  end
end

player1 = Player.new("戦士")
player1.work()

player2 = Player.new("魔法使い")
player2.work()

player1.job = "賢者"
player1.work()