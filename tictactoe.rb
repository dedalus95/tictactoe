class Prompt

  attr_accessor :player_one

  def self.player_one_choice
    puts "Player 1: choose a case(X/O)."
    @@player_one = gets.chomp.upcase
  end

  def self.player_two_choice
    puts "Player 2: choose a case(X/O)."
    @@player_two = gets.chomp.upcase
  end

  def self.player_one_correct_choice
    if @@player_one != 'X' || @@player_one != 'O'
      until @@player_one == 'X' || @@player_one == 'O'
      puts 'Player 1: choose an available case.'
      @@player_one = gets.chomp.upcase
      end
    end
  end

  def self.player_two_correct_choice
    if @@player_two != 'X' || @@player_two != 'O' || @@player_two == @@player_one
      until(@@player_two == 'X' || @@player_two == 'O') && @@player_two != @@player_one
      puts 'Player 2: choose an available case.'
      @@player_two = gets.chomp.upcase
      end
    end
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

    def self.x_winner 
      (@@one == 'x' && @@two == 'x' && @@three == 'x') ||
      (@@one == 'x' && @@four == 'x' && @@seven == 'x') ||
      (@@one == 'x' && @@five == 'x' && @@nine == 'x') ||
      (@@two == 'x' && @@five == 'x' && @@eight == 'x') ||
      (@@three == 'x' && @@five == 'x' && @@seven == 'x') ||
      (@@three == 'x' && @@six == 'x' && @@nine == 'x')
    end

    def self.o_winner
      (@@one == 'o' && @@two == 'o' && @@three == 'o') ||
      (@@one == 'o' && @@four == 'o' && @@seven == 'o') ||
      (@@one == 'o' && @@five == 'o' && @@nine == 'o') ||
      (@@two == 'o' && @@five == 'o' && @@eight == 'o') ||
      (@@three == 'o' && @@five == 'o' && @@seven == 'o') ||
      (@@three == 'o' && @@six == 'o' && @@nine == 'o')
    end

  
    def self.x_choose_number
      puts 'X: choose a number.'
      @@number = gets.chomp.to_i
      case @@number
      when 1 
        @@one = 'x'
      when 2
        @@two = 'x'
      when 3
        @@three =  'x'
      when 4
        @@four =  'x'
      when 5
        @@five = 'x'
      when 6
        @@six = 'x'
      when 7
        @@seven = 'x'
      when 8 
        @@eight = 'x'
      when 9
        @@nine = 'x'
      end
    end

    def self.o_choose_number
      puts 'O: choose a number.'
      @@number = gets.chomp.to_i
      case @@number
      when 1 
        @@one = 'o'
      when 2
        @@two = 'o'
      when 3
        @@three =  'o'
      when 4
        @@four =  'o'
      when 5
        @@five = 'o'
      when 6
        @@six = 'o'
      when 7
        @@seven = 'o'
      when 8 
        @@eight = 'o'
      when 9
        @@nine = 'o'
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
      if Play.x_winner
        puts Play.board
        puts 'X wins'
        exit
      elsif Play.o_winner
        puts Play.board
        puts 'O wins'
        exit
      end
    end

    def self.game 
      until self.x_winner || self.o_winner
        Play.board
        Play.x_choose_number
        Play.end_game
        Play.board
        Play.o_choose_number
        Play.end_game
      end
    end
end



#  Prompt.player_one_choice 

# # Prompt.player_one_choice
# Prompt.player_one_correct_choice
# Prompt.player_two_choice
# Prompt.player_two_correct_choice

Play.game










