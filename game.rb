class TicTacToe
  WIN_COMBOS = [
    [0,1,2],[3,4,5],[6,7,8],
    [0,3,6],[1,4,7],[2,5,8],
    [0,4,8],[2,4,6]
  ]

  def display_board(board)
    " #{board[0]} | #{board[1]} | #{board[2]} \n" \
    "---+---+---\n" \
    " #{board[3]} | #{board[4]} | #{board[5]} \n" \
    "---+---+---\n" \
    " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def winner?(board, player)
    WIN_COMBOS.any? { |combo| combo.all? { |i| board[i] == player } }
  end

  def play
    board = ["*"] * 9
    current_player = "X"
    moves = 0

    while moves < 9
      puts display_board(board)
      puts "Player #{current_player}, choose a position (1-9): "
      move = gets.chomp.to_i - 1

      if move.between?(0, 8) && board[move] == "*"
        board[move] = current_player
        moves += 1

        if winner?(board, current_player)
          puts display_board(board)
          puts "Player #{current_player} wins!"
          return
        end

        current_player = current_player == "X" ? "O" : "X"
      else
        puts "Invalid move! Try again."
      end
    end
    puts display_board(board)
    puts "It's a draw! No spaces left."
  end
end
