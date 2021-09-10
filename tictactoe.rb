

module Display
  def player_symbol_message(number)
    "Player #{number}: choose a case(x/o)."
  end
  
  def symbol_validation_message(duplicate)
    "Choose a case. It can't be #{duplicate}."
  end

  def player_name_message(number)
    "Player #{number}: write your name."
  end

  def choose_a_number_message(name)
    "#{name}: choose a number between 1-9."
  end

  def chosen_number_warning
    "Invalid input: this number has already been chosen."
  end

  def impossible_number_warning
    "This number is not on the board: choose an available number."
  end

  def end_game_message(name)
    "#{name} wins."
  end

  def draw_message
    "It's a draw."
  end
end

class Player
  attr_reader :name, :symbol
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end


class Turn 
  include Display
  attr_reader :player_one, :player_two

  def initialize
    @player_one 
    @player_two
    @board 
  end

  def createPlayer(number, duplicate)
  symbol = prompt_symbol(number)
  name = prompt_name(number)
  Player.new(name, symbol)
  end

  def initialize_players
    player_one = createPlayer(1)
    player_two = createPlayer(2, player_one.symbol)

    p player_one.name
    p player_two.name
  end

  def prompt_symbol(number)
    puts player_symbol_message(number)
    symbol = gets.chomp
  end

  def symbols_not_equal(duplicate)
    puts symbol_validation_message(duplicate)
    symbol = gets.chomp
  end

  def prompt_name(number)
    puts player_name_message(number)
    name = gets.chomp
  end

  def validate_symbol
  end

  def read_names
   
  end
end

lo = Turn.new
lo.initialize_players












class Board
  attr_reader :cells, :current_player_arr

  WINNING_CONDITIONS = [[1,2,3], [1,4,7], [1,5,9], [2,5,8], [3,5,7], [3,6,9], [4,5,6], [7,8,9]]


  def initialize
    @cells = [1,2,3,4,5,6,7,8,9]
    @current_player_arr = [1,5,9]
  end

  def board_output
    "      #{cells[0]} | #{cells[1]} | #{cells[2]} 
     ---+---+---
      #{cells[3]} | #{cells[4]} | #{cells[5]} 
     ---+---+---
      #{cells[6]} | #{cells[7]} | #{cells[8]}"
  end

  def update_cell(number, mark)
    cells[number - 1] = mark
  end

  def winner
    WINNING_CONDITIONS.each do
      |x| a = current_player_arr - x
      if a.empty?
        p 'sto cazzo'
      end
    end
  end

end





