class Prompt
  def player_one_choice
    puts "Player 1: choose a case(x/o)."
    @player_one = gets.chomp.downcase
  end

  def player_one_correct_choice
    if @player_one != 'x' || @player_one != 'o'
      until @player_one == 'x' || @player_one == 'o'
      puts "Player 1: choose an available case. It must be 'x' or 'o'."
      @player_one = gets.chomp.downcase
      end
    end
  end

  def player_one_name
    puts "Player 1: write your name."
    @player_one_name = gets.chomp
  end

  def player_two_choice
    puts "Player 2: choose a case. It can't be '#{@player_one}'."
    @player_two = gets.chomp.downcase
  end

  def player_two_correct_choice
    if @player_two != 'x' || @player_two != 'o' || @player_two == @player_one
      until(@player_two == 'x' || @player_two == 'o') && @player_two != @player_one
      puts "Player 2: choose an available case. It can't be #{@player_one}."
      @player_two = gets.chomp.downcase
      end
    end
  end

  def player_two_name
    puts "Player 2: write your name."
    @player_two_name = gets.chomp
  end
end





class Play
      @@one = 1
      @@two = 2
      @@three = 3
      @@four = 4
      @@five = 5
      @@six = 6
      @@seven = 7
      @@eight = 8
      @@nine = 9
      @@arr = []
      
      
      game = Prompt.new
      game.player_one_choice
      game.player_one_correct_choice
      game.player_one_name
      game.player_two_choice
      game.player_two_correct_choice
      game.player_two_name
      @@player_one = game.instance_variable_get(:@player_one)
      @@player_two = game.instance_variable_get(:@player_two)
      @@player_one_name = game.instance_variable_get(:@player_one_name)
      @@player_two_name = game.instance_variable_get(:@player_two_name)

    def self.player_one_winner 
      require 'colorize'
      (@@one == @@player_one.red && @@two == @@player_one.red && @@three == @@player_one.red) ||
      (@@one == @@player_one.red && @@four == @@player_one.red && @@seven == @@player_one.red) ||
      (@@one == @@player_one.red && @@five == @@player_one.red && @@nine == @@player_one.red) ||
      (@@two == @@player_one.red && @@five == @@player_one.red && @@eight == @@player_one.red) ||
      (@@three == @@player_one.red && @@five == @@player_one.red && @@seven == @@player_one.red) ||
      (@@three == @@player_one.red && @@six == @@player_one.red && @@nine == @@player_one.red) ||
      (@@four == @@player_one.red && @@five == @@player_one.red && @@six == @@player_one.red) ||
      (@@seven == @@player_one.red && @@eight == @@player_one.red && @@nine == @@player_one.red)
    end

    def self.player_two_winner
      require 'colorize'
      (@@one == @@player_two.blue && @@two == @@player_two.blue && @@three == @@player_two.blue) ||
      (@@one == @@player_two.blue && @@four == @@player_two.blue && @@seven == @@player_two.blue) ||
      (@@one == @@player_two.blue && @@five == @@player_two.blue && @@nine == @@player_two.blue) ||
      (@@two == @@player_two.blue && @@five == @@player_two.blue && @@eight == @@player_two.blue) ||
      (@@three == @@player_two.blue && @@five == @@player_two.blue && @@seven == @@player_two.blue) ||
      (@@three == @@player_two.blue && @@six == @@player_two.blue && @@nine == @@player_two.blue) ||
      (@@four == @@player_two.blue && @@five == @@player_two.blue && @@six == @@player_two.blue) ||
      (@@seven == @@player_two.blue && @@eight == @@player_two.blue && @@nine == @@player_two.blue)
    end
  
    def self.game_player_one
      puts "#{@@player_one_name}: choose a number between 1-9."
      @@number = gets.chomp.to_i

      if !@@arr.include? @@number
        @@arr << @@number
        Play.player_one_choose_number
      elsif @@arr.include? @@number
        puts "Invalid input: this number has been already chosen."
        @@arr.delete @@number
        self.game_player_one
      end

      if @@number > 9
        puts "Che ce faccio?"
        @@arr.delete @@number
        self.game_player_one
      end

      if @@number <= 0
        puts "Che ce faccio?"
        @@arr.delete @@number
        self.game_player_two
      end
    end

    def self.game_player_two
      puts "#{@@player_two_name}: choose a number between 1-9."
      @@number = gets.chomp.to_i

      if !@@arr.include? @@number
        @@arr << @@number
        Play.player_two_choose_number
      elsif @@arr.include? @@number
        puts "Invalid input: this number has been already chosen."
        @@arr.delete @@number
        self.game_player_two
      end

      if @@number <= 0
        puts "Che ce faccio?"
        @@arr.delete @@number
        self.game_player_two
      end

      if @@number > 9 
        puts "Che ce faccio?"
        @@arr.delete @@number
        self.game_player_two
      end
    end

    def self.player_one_choose_number
      require 'colorize'
      case @@number
      when 1 
        @@one = @@player_one.red
      when 2
        @@two = @@player_one.red
      when 3
        @@three =  @@player_one.red
      when 4
        @@four =  @@player_one.red
      when 5
        @@five = @@player_one.red
      when 6
        @@six = @@player_one.red
      when 7
        @@seven = @@player_one.red
      when 8 
        @@eight = @@player_one.red
      when 9
        @@nine = @@player_one.red
      end
    end

    def self.player_two_choose_number
      require 'colorize'
      case @@number
      when 1 
        @@one = @@player_two.blue
      when 2
        @@two = @@player_two.blue
      when 3
        @@three = @@player_two.blue
      when 4
        @@four = @@player_two.blue
      when 5
        @@five = @@player_two.blue
      when 6
        @@six = @@player_two.blue
      when 7
        @@seven = @@player_two.blue
      when 8 
        @@eight = @@player_two.blue
      when 9
        @@nine = @@player_two.blue
      end
    end

    def self.board
      puts " 
      #{@@one} | #{@@two} | #{@@three} 
     ---+---+---
      #{@@four} | #{@@five} | #{@@six} 
     ---+---+---
      #{@@seven} | #{@@eight} | #{@@nine} 
      "
    end

    def self.end_game
      if Play.player_one_winner
        puts Play.board
        puts "#{@@player_one_name} wins."
        exit
      elsif Play.player_two_winner
        puts Play.board
        puts "#{@@player_two_name} wins."
        exit
      end
    end

    def self.draw
      if @@arr.sort == [1,2,3,4,5,6,7,8,9] 
        puts Play.board
        puts "It's a draw"
        exit
      end
    end

    def self.game 

      until Play.player_one_winner || Play.player_two_winner
        Play.board
        Play.game_player_one

        if !Play.end_game
        Play.draw
        end

        Play.board
        Play.game_player_two

        if !Play.end_game
        Play.draw
        end

      end
    end
end







Play.game













