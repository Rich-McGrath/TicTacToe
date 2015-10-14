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
  system 'clear'
  puts " #{b[1]} | #{b[2]} | #{b[3]} "
  puts '-----------'
  puts " #{b[4]} | #{b[5]} | #{b[6]} "
  puts '-----------'
  puts " #{b[7]} | #{b[8]} | #{b[9]} "
end

def empty_positions(b)
  b.select {|k, v| v == ' ' }.keys
end

def player_picks_square(b)
  puts 'Pick a square:(1-9):'
  position = gets.chomp.to_i
  b[position] = 'X'
end

#def two_in_a_row(check_winner, board)
#    if board.values_at()
#end

def computer_picks_square(b)
  position = empty_positions(b).sample
  b[position] = 'O'
end

#def winning_combinations
#  winning_lines = {}
winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
#  winning_lines
#end

def check_winner(board, winning_lines)
  #winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
  #win.each do |line|
    return 'Player' if board.values_at(*line).count('X') == 3
    return 'Computer' if board.values_at(*line).count('0') == 3
  end
  nil
end

def announce_winner(winner)
  puts "#{winner} won!"
end

def nine_positions_are_filled?(board)
  empty_positions(board) == []
end

  #win = winning_combinations
  board = initialize_board
  draw_board(board)

begin
  player_picks_square(board)
  computer_picks_square(board)
  draw_board(board)
  winner = check_winner(board, winning_lines)
end until winner || nine_positions_are_filled?(board)

if winner
  announce_winner(winner)
else
  puts "It's a tie!"
end
