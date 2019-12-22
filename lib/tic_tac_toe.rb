class TicTacToe
  

  def initialize(board = nil)
    @board = board || Array.new(9," ")
  end


  def WIN_COMBINATIONS
    WIN_COMBINATIONS[0,1,2],
    WIN_COMBINATIONS[3,4,5],
    WIN_COMBINATIONS[6,7,8],
    WIN_COMBINATIONS[0,3,6],
    WIN_COMBINATIONS[1,4,7],
    WIN_COMBINATIONS[2,5,8],
    WIN_COMBINATIONS[0,4,8],
    WIN_COMBINATIONS[2,4,6]
  
  def dispaly_board
    puts  " #{board[0]} |
      #{@board[1]} | #{board[2]} "
    puts  "-----------"
    puts  " #{@board[3]} |
      #{@board[4]} | #{@board[5]} "
    puts  "-----------"
    puts  " #{@board[6]} | #{@board[7]} |
      #{@board[8]} "
  end
 
  def input_to_index
    (user_input)
    user_input.to_i - 1
  end
  
  def move(position, char)
    @board[position] = 
      char
  end
  
  def position_taken?(index_i)
    ((@board[index_i] == "X") || (@board[index_i] == "0"))
  end
  
  def valid_move?(index)
    index.between?(0,8) &&
      !position_taken?(index)
  end
