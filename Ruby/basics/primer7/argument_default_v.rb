# Here your code !

def introduce(name = "村人", msg)
    puts "私は#{name}です。"
    puts "#{msg[:target]}、#{msg[:greeting]}"
end

introduce("勇者", {target: "世界の皆さん", greeting: "こんにちは"})