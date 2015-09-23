require_relative "../nested_arrays"

describe "#generate_chessboard" do
  let(:board) { generate_chessboard }

  describe "board structure" do
    it "returns the board as an array" do
      expect(board).to be_a Array
    end

    it "has eight rows" do
      expect(board.length).to eq 8
    end

    it "has rows with eight spaces" do
      rows_of_right_length_count = board.count { |row| row.length == 8 }

      expect(rows_of_right_length_count).to be 8
    end
  end

  describe "piece placement" do
    let(:black_back_row) { ["B Rook", "B Knight", "B Bishop", "B Queen", "B King", "B Bishop", "B Knight", "B Rook"] }
    let(:white_back_row) { ["W Rook", "W Knight", "W Bishop", "W Queen", "W King", "W Bishop", "W Knight", "W Rook"] }

    it "has a first row of black backline pieces" do
      expect(board.first).to eq black_back_row
    end

    it "has a last row of while backline pieces" do
      expect(board.last).to eq white_back_row
    end

    it "has a second row of all black pawns" do
      second_row = board[1]

      expect(second_row.all? { |piece| piece == "B Pawn" }).to be true
    end

    it "has a second to last row of all white pawns" do
      second_to_last_row = board[-2]

      expect(second_to_last_row.all? { |piece| piece == "W Pawn" }).to be true
    end

    it "has four empty rows" do
      empty_rows_count = board.count { |row| row.all?(&:nil?) }

      expect(empty_rows_count).to eq 4
    end
  end
end
