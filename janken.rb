def janken
  puts "最初はグー、じゃんけん..."
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"
  player_hand = gets.to_i #自分の手の数値を入力
  if player_hand < 0 || 2 < player_hand then
    puts "無効な値です"
    return true
  end

  program_hand = rand(3) #ランダムに数値が返される
  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    return true
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    return false
  else
    puts "あなたの負けです"
  end
end


next_game = true

while next_game do
  next_game = janken
end