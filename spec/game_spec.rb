require_relative "../game"


RSpec.describe TicTacToe do
  let(:game) { TicTacToe.new }

  describe "#winner?" do
    it "detects a win across the top row" do
      board = ["X","X","X","*","*","*","*","*","*"]
      expect(game.winner?(board, "X")).to eq(true)
    end
  end

  describe "#display_board" do
    it "renders the board correctly" do
      board = ["X","O","X","O","X","O","X","O","X"]
      output = game.display_board(board)
      expect(output).to include("X | O | X")
    end
  end
end
