# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]
  
  def won?(board)
    WIN_COMBINATIONS.detect do |win_combo|
      board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[1])
    end
  end
  
  
  def full?(board)
    board.all?{|occupied| occupied != " "}
  end
  
  def draw?(board)
    !(won?(board)) && (full?(board))
  end
  
  def over?(board)
    (won?(board)) || (full?(board)) || (draw?(board))
  end
  
  def over?(board)
    (won?(board)) || (full?(board)) || (draw?(board))
  end
  
  def winner(board)
    WIN_COMBINATIONS.detect do |win_combo|
      if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
        return "X"
      elsif (board[win_combo[0]]) == "O" && (board[win_combo[1]]) == "O" && (board[win_combo[2]]) == "O"
        return "O"
      else
        nil
      end
    end
  end