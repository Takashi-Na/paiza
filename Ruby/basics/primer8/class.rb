class Player
    def work()
        puts "勇者は荒野を歩いていた。"
    end

    def attack(ememy)
      puts "勇者は#{enemy}を攻撃した。"
    end
end

player1 = Player.new()
player1.work()
player1.attack("スライム")