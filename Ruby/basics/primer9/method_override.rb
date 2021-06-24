# メソッドのオーバーライド

class Box
  def initialize(item)
    @item = item
  end

  def open()
    puts "宝箱を開いた。#{@item}の剣を手に入れた。"
  end
end

class MagicBox < Box
  def look()
    puts "宝箱は怪しく輝いている。"
  end

  def open()
    puts "宝箱を開いた。#{@item}が襲いかかってきた！"
  end
end

box = Box.new("鋼鉄の剣")
box.open()

puts

magicbox = MagicBox.new("ミミック")
magicbox.look()
magicbox.open()