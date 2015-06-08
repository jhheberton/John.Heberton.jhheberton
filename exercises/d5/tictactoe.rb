# # How will you keep track of whose turn it is?
# Boolean variable that updates to reflect whose turn it is

# # What data structure will you use to keep track of the board? You only
# #   know two (Array, Hash), but remember they can be nested (meaning an
# #   array can contain another array—it can even contain a hash that contains
# #   another hash, though unclear if that will be useful :P)
# Array of strings

# # When a player makes a move, what should happen?
# The value at that index should update to be either x or o, depending on the player.

# # How do you keep track of which squares have Xs and which have Os?
# "The values at that square's index."

# # How do you detect a winner?
# A "game over" method/variable.

# # When does the program stop? Is there a loop? If so, what kind?
# The program stops either when the game is over or it is a cats game.

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
game_over = false
player = true
def show_board(board)
 	puts "  #{board[0]} | #{board[1]} | #{board[2]}  "
 	puts " ----------- "
 	puts "  #{board[3]} | #{board[4]} | #{board[5]}  "
 	puts " ----------- "
 	puts "  #{board[6]} | #{board[7]} | #{board[8]}  "
 end

puts "Welcome to tic tac toe!"

while game_over == false

	show_board(board)

	puts "#{player ? "Player 1" : "Player 2"} enter a board position: 1-9"
	index = gets.strip.to_i - 1

	if (board[index] == " " && index >= 0 && index <=8)
		board[index] = player ? "X" : "O"
		player = !player
	elsif !board[index] == " "
		puts "That position is already taken."
	else puts "Error: invalid position."
	end

	game_over = (board[0] == board[1] && board[0] == board[2] && !(board[0] == " ")) || (board[3] == board[4] && board[3] == board[5] && !(board[3] == " ")) || (board[6] == board[7] && board[6] == board[8] && !(board[6] == " ")) || (board[0] == board[3] && board[0] == board[6] && !(board[0] == " ")) || (board[1] == board[4] && board[1] == board[7] && !(board[1] == " ")) || (board[2] == board[5] && board[2] == board[8] && !(board[2] == " ")) || (board[0] == board[4] && board[0] == board[8] && !(board[0] == " ")) || (board[2] == board[4] && board[2] == board[6] && !(board[2] == " "))

	if game_over
		puts "congratulations #{player ? "Player 2" : "Player 1"}! You win!" 
		break
	end

	if !(board.include?(" "))
		puts "Cats game!"
		break
	end

end

# 0.upto(8) do |i|
# 	puts "Cats game!" if board[i] 
# end






