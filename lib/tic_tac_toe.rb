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
  attr_accessor :board, :player_1,  :player_2
  
  
  
  def initialize(player_1 = player_2 = Players::Human.new("0"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end
  
  def current_player
    @board.turn_count % 2 == 0 ? player_1
  
  
  def over?
    won? || draw?
  
  
  def won?
    WIN_COMBINATIONS.detect do |winner|
      @board.cells[i]
      
      [1,4,7]
    end
  end
  
  def draw?
    @board.full? && !won?
  end
  
  def winner
    if  a win combination = won?
      @winner = @board.cells[winning piece]
    end
  end
end
