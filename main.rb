require 'io/console'
require './lib/user'
require './lib/event'

class Game
  include Event
  attr_accessor :user1, :user2
  def initialize(user1, user2)
    @user1 = User.new(user1)
    @user2 = User.new(user2)
  end

  def get_choice(player)
    choice = ''
    loop do
      puts "What is #{player.name}'s choice?"
      choice = STDIN.noecho(&:gets).chomp.downcase # hides the input
      puts ''
      begin
        player.set_choice(choice)
        break
      rescue
        puts 'No such a move!'
      end
    end

  end

  def icon
    puts "#{@user1.choice.type.icon}  VS. #{@user2.choice.type.icon}"
  end

  def fightmaker
    if @user1.choice.type.name == @user2.choice.type.name
      puts "\nTIE!\n\n" # tie outcome string
      run
    else 
      winner = @user1
      loser  = @user2
      if @user2.choice.type.win.include?(@user1.choice.type.name)
        winner = @user2
        loser  = @user1
      end
      event_key = "#{winner.choice.type.name}_#{loser.choice.type.name}".to_sym
      puts ''
      puts @@event[event_key].to_s
      puts "\nThe winner is...\n#{winner.name}!\n\nWho wins next? You decide!\n\n" # displaying winner + outro string
    end
  end

  def run
    puts "5!\n4!\n3!\n1!\nOFFBLAST!\n" # countdown string
    get_choice(@user1)
    get_choice(@user2)
    icon # display icons
    fightmaker # select and display winner
  end

end

if __FILE__ == $PROGRAM_NAME
  main = Game.new('Jane', 'John') # Player's names
  main.run
end
