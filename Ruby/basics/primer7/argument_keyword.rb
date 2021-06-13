def say_hello(greeting: "hello", target: "world")
  puts "#{greeting} #{target}"
end

say_hello()
say_hello(greeting:  "こんにちは", target: "皆さん")
say_hello(greeting: "good morning")
say_hello(target: "世界")