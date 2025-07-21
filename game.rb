
# # def display_board(board)
# #   puts " #{board[0]} | #{board[1]} | #{board[2]} "
# #   puts "---+---+---"
# #   puts " #{board[3]} | #{board[4]} | #{board[5]} "
# #   puts "---+---+---"
# #   puts " #{board[6]} | #{board[7]} | #{board[8]} "
# # end


# # board = ["*", "*", "*",
# #          "*", "*", "*",
# #          "*", "*", "*"]

# # display_board(board)

# class TicTacToe
#   WIN_COMBOS = [
#     [0,1,2],[3,4,5],[6,7,8],
#     [0,3,6],[1,4,7],[2,5,8],
#     [0,4,8],[2,4,6]
#   ]

#   def initialize
#     @board = Array.new(9, " ")
#     @current = "X"
#   end

#   def play
#     loop do
#       clear_screen
#       draw_board
#       human_move
#       if winner = winning_marker
#         clear_screen
#         draw_board
#         puts "Player #{@current} wins!"
#         break
#       elsif !full?
#         clear_screen
#         draw_board
#         puts "It's a draw."
#         break
#       else
#         switch_player
#       end
#     end
#   end

#   private

#   def draw_board ()
#     puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
#     puts "---+---+---"
#     puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
#     puts "---+---+---"
#     puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
#     puts
#   end

#   def human_move
#     loop do
#       print "Player #{@current}, choose a position (1-9): "
#       input = gets&.chomp
#       next unless input =~ /^[1-9]$/
#       idx = input.to_i - 1
#       if @board[idx] != " "
#         @board[idx] = @current
#         break
#       else
#         puts "That spot is taken. Try again."
#       end
#     end
#   end

#   def opponent; @current == "X" ? "O" : "X" end
#   def switch_player; @current == opponent end
#   def full?; @board.include?(" ") end

#   def winning_marker
#     WIN_COMBOS.each do |a,b,c|
#       trio = [@board[a], @board[b], @board[c]]
#       return trio.first if trio.uniq.size == 1 && trio.first != " "
#     end
#     nil
#   end

#   def clear_screen; system("clear") || system("cls") end
# end

# puts "Tic-Tac-Toe (Player vs Player)"
# TicTacToe.new.play

# class TicTacToe
#   WIN_COMBOS = [
#     [0,1,2],[3,4,5],[6,7,8],
#     [0,3,6],[1,4,7],[2,5,8],
#     [0,4,8],[2,4,6]
#   ]

#   def display_board(board)
#     puts " #{board[0]} | #{board[1]} | #{board[2]} "
#     puts "---+---+---"
#     puts " #{board[3]} | #{board[4]} | #{board[5]} "
#     puts "---+---+---"
#     puts " #{board[6]} | #{board[7]} | #{board[8]} "
#   end

#   # below 5 lines are to check for the winners 
#   def winner?(board, player)
#     WIN_COMBOS.any? do |combo|
#       combo.all? { |index| board[index] == player }
#     end
#   end

#   def play
#     board = ["*"] * 9
#     current_player = "X"
#     moves = 0

    # while moves < 9
    #   display_board(board)
    #   puts "Player #{current_player}, choose a position (1-9): "
    #   move = gets.chomp.to_i - 1

    #   if move.between?(0, 8) && board[move] == "*"
    #     board[move] = current_player
    #     moves += 1

    #     if winner?(board, current_player)
    #       display_board(board)
    #       puts "Player #{current_player} wins!"
    #       return
    #     end

#         current_player = current_player == "X" ? "O" : "X"
#       else
#         puts "Invalid move! Try again."
#       end
#     end

#     display_board(board)
#     puts "It's a draw! No spaces left."
#   end
# end

# game = TicTacToe.new
# game.play


class TicTacToe
  WIN_COMBOS = [
    [0,1,2],[3,4,5],[6,7,8],
    [0,3,6],[1,4,7],[2,5,8],
    [0,4,8],[2,4,6]
  ]

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "---+---+---"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "---+---+---"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def winner?(board, player)
    WIN_COMBOS.any? { |combo| combo.all? { |i| board[i] == player } }
  end

  def play
    board = ["*"] * 9
    current_player = "X"
    moves = 0

    while moves < 9
      display_board(board)
      puts "Player #{current_player}, choose a position (1-9): "
      move = gets.chomp.to_i - 1

      if move.between?(0, 8) && board[move] == "*"
        board[move] = current_player
        moves += 1

        if winner?(board, current_player)
          display_board(board)
          puts "Player #{current_player} wins!"
          return
        end

        current_player = current_player == "X" ? "O" : "X"
      else
        puts "Invalid move! Try again."
      end
    end
    display_board(board)
    puts "It's a draw! No spaces left."
  end
end



game = TicTacToe.new
game.play

