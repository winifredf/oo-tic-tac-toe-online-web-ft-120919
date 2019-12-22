class TicTacToe
  
  attr_accessor :cells
  
  def initialize
    reset!
  end

  def reset!
    @board = Array.new(9," ")
  end
  
  def display_board
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]}"
    puts  "-----------"
    puts  "#{cells[3]} | #{cells[4]} | #{cells[5]}"
    puts  "-----------"
    puts  "#{cells[6]} | #{cells[7]} | #{cells[8]}"
  end

end
  
  def position(input)
    cells[input.to_i-1]
      if  character == "X" || character == "0"
        true
      else
        false
      end
    end
  
  def turn_count
    cells.count{|char| char=="X" || char=="0"}
  end
  
  def taken?(input)
    position(input)=="X" || position(input)=="0"
 end
 
  def  valid_move?(input)
    input.to_i.between?(1,9) && !taken?(input)
  end
  
  def update(input, player)
    cells[input.to_i-1] = player.token
  end
  
  module  Players
    class Human < PLayer
      
      def move
        puts  "Please enter your selection!"
        gets.strip
      end
    end
  end

class Game
  attr_accessor :bo]ard, :player_1,  :player_2
  
  WIN_COMBINATIONS = [
    [0,1,2,],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  
  def initialize(player_1 = , player_2 = Players::Human.new("0"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end
end