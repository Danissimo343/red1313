def play_battleship

board = Array.new(7) { Array.new(7, "O") }

def print_board(board)
board.each do |r|
puts r.map { |p| p }.join(" ")
end
end


puts "Давайте поиграем в Поиск вражеской капиталистической подводной лодки!\n-----\nу вас есть 10 попыток!\n-----"
print_board(board)
def random_row(board)
return rand(7)
end

def random_col(board)
return rand(7)
end

ship_row = random_row(board)
ship_col = random_col(board)
#puts ship_row ##debugging purposes
#puts ship_col ## ^^^^


for turn in 1..10
puts "Попытка: #{turn}"
puts "Выберите координаты Y (0-6): "
guess_row = gets.chomp.to_i
puts "Выберите координаты X (0-6): "
guess_col = gets.chomp.to_i
if turn == 7
puts "------\nGame Over!\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
break
elsif (guess_row == ship_row) && (guess_col == ship_col)
puts "Поздровляем, вы нашли капиталситов, вы будете награжены орденом мужества!"
break
else
if ((guess_row < 0) || (guess_row > 6)) || ((guess_col < 0) || (guess_col > 6))
puts "Майор, У вас проблемы с координацией движений."
elsif(board[guess_row][guess_col] == "X")
puts "Вы почти нашли наших врагов."
else
puts "Вы предатель Родины, вы не сумели уничтожить узурпаторов!"
board[guess_row][guess_col] = "X"
end
end
print_board(board)
end
end
play_battleship
