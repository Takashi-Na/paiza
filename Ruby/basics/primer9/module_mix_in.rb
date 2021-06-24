module Greeting
  def say_hello()
    puts "hello world"
  end

  def say_morning()
    puts "good morning!"
  end

  module_function :say_hello
end


class Player
  include Greeting

  def introduce()
    puts "私は、勇者です。"
  end
end

Greeting.say_hello()

player = Player.new()
player.introduce()
player.say_morning()