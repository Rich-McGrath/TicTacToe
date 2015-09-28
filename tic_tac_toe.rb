# Tic Tac Toe
# 1. Come up with requirments/specification, whihc will determine the scope.
# 2. Application logic; sequence of steps
# 3. Translation of those steps into code
# 4. Run code to verify logic
#

# Psuedo Code
# draw a board
#
# assing player to "X"
# assign computer to "O"
#
# loop until a winner or all squares are taken
#   player1 picks an empty square
#   check for winner
#   player2 picks an empty square
#   check for winner
#
# if there's a winner
#   show the winner
# or else
#   it's a tie

def draw_board
  puts ' | | '
  puts '-+-+-'
  puts ' | | '
  puts '-+-+-'
  puts ' | | '
end

def player_picks_square
  puts 'Pick a square:'
  position = gets.chomp
end

draw_board
  player_picks_square
begin

end until winner || all_squares_taken?
