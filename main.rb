require 'io/console'
require './user'

class Game
  attr_accessor :user1, :user2
  def initialize(user1, user2)
    @user1 = User.new(user1)
    @user2 = User.new(user2)
  end

  def icon
    puts "#{@user1.choice.type.icon}  VS. #{@user2.choice.type.icon}"
  end

  def fightmaker
    if @user1.choice.type.name == @user2.choice.type.name
      puts "\nTIE!\n\n"
      run
    else 
      winner = @user1
      winner = @user2 if @user2.choice.type.win == @user1.choice.type.name
      @winner = winner.name
      puts "\nThe winner is...\n#{@winner}!\n\nWho win next? You decide!\n\n"
    end
  end

  def get_choice(player)
    choice = ''
    loop do
      puts "What is #{player.name}'s choice?"
      choice = STDIN.noecho(&:gets).chomp.downcase #hides the input
      puts ''
      break if choice == 'rock' || choice == 'paper' || choice == 'scissor' 
      puts 'No such a move!'
    end
    player.set_choice(choice)
  end

  def run
    puts "4!\n3!\n1!\nOFFBLAST!\n"
    
    get_choice(@user1)
    get_choice(@user2)

    icon
    fightmaker
  end

end

if __FILE__ == $PROGRAM_NAME
  Main = Game.new('Jane', 'John')
  Main.run
end
