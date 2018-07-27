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
    win_index_1 = WIN_COMBINATIONS[0]
    win_index_2 = WIN_COMBINATIONS[1]
    win_index_3 = WIN_COMBINATIONS[2]
    win_index_4 = WIN_COMBINATIONS[3]
    win_index_5 = WIN_COMBINATIONS[4]
    win_index_6 = WIN_COMBINATIONS[5]
    win_index_7 = WIN_COMBINATIONS[6]
    win_index_8 = WIN_COMBINATIONS[7]
    win_index_9 = WIN_COMBINATIONS[8]
    
    position_1 = board[win_index_1].to_s
    position_2 = board[win_index_2].to_s
    position_3 = board[win_index_3].to_s
    position_4 = board[win_index_4].to_s
    position_5 = board[win_index_5].to_s
    position_6 = board[win_index_6].to_s
    position_7 = board[win_index_7].to_s
    position_8 = board[win_index_8].to_s
    position_9 = board[win_index_9].to_s
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
      else false
    end
  end