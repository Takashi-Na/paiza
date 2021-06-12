# paizaのHP入力
h = gets.to_i

p_attack = [1, 1]
m_attack = [1, 1]

turn = 2
p_total_dmg = 2

h -= 2

while true
  # paizaの攻撃
  p_attack.push(m_attack[turn-1] + m_attack[turn-2]).map(&:to_i)
  # monsterの攻撃
  m_attack.push(p_attack[turn-1]*2 + p_attack[turn-2]).map(&:to_i)
  # turn加算
  turn += 1

  # paizaのダメージ計算ls
  h -= m_attack[turn -1]

  # paizaのHPよりダメージが大きくなったら終了
  if h <= 0
    break
  end
end

puts turn