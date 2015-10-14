# Tic Tac Toe
# 1. Come up with requirments/specification, whihc will determine the scope.
# 2. Application logic; sequence of steps
# 3. Translation of those steps into code
# 4. Run code to verify logic
#

require 'pry'

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

def initialize_board
  b = {}
  (1..9).each {|position| b[position] = ' ' }
  b
end


def draw_board(b)
  puts " #{b[1]} | #{b[2]} | #{b[3]} "
  puts '-----------'
  puts " #{b[4]} | #{b[5]} | #{b[6]} "
  puts '-----------'
  puts " #{b[7]} | #{b[8]} | #{b[9]} "
end

def empty_positon(b)
  b.select {|k, v| v == ' ' }.keys
end

def player_picks_square(b)
  puts 'Pick a square:(1-9):'
  position = gets.chomp.to_i
  b[position] = 'X'
  binding.pry
end

def computer_picks_square(b)
  position = empty_positon(b).sample
  b[position] = 'O'
end

  board = initialize_board
  draw_board(board)


begin
  player_picks_square(board)
  draw_board(board)
  computer_picks_square(board)
  draw_board(board)
end until winner || all_squares_taken?
