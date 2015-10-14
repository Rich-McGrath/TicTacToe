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
  board = {}
  (1..9).each {|position| board[position] = ' ' }
  board
end


def draw_board(board)
  system 'clear'
  puts " #{board[1]} | #{board[2]} | #{board[3]} "
  puts '-----------'
  puts " #{board[4]} | #{board[5]} | #{board[6]} "
  puts '-----------'
  puts " #{board[7]} | #{board[8]} | #{board[9]} "
end

def empty_positions(board)
  board.keys.select {|position| board[position] == ' '}
end

def player_picks_square(board)
  puts 'Pick a square:(1-9):'
  position = gets.chomp.to_i
  board[position] = 'X'
end

def computer_picks_square(board)
  position = empty_positions(board).sample
  board[position] = 'O'
end

def check_winner(board, winning_lines)
  winning_lines.each do |line|
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


  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  board = initialize_board
  draw_board(board)

begin
  player_picks_square(board)
  computer_picks_square(board,)
  draw_board(board)
  winner = check_winner(board, winning_lines)
end until winner || nine_positions_are_filled?(board)

if winner
  announce_winner(winner)
else
  puts "It's a tie!"
end
