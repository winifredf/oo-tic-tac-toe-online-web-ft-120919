class TicTacToe
  
  attr_accessor :cells
  
  def initialize
    reset!
  end

  def reset!
    @board = Array.new(9," ")
  end
  
  def display
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
  end
  
  def turn_count
    cells.count{|char| char=="X" || char=="0"}
  end
  
  def taken?(input)
    position(input)=="X" || position(input)=="0"
    !(position(input)==" " || position(input)=="")
  end
  