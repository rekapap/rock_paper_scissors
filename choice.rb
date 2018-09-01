require './rock'
require './paper'
require './scissor'

class Choice
  attr_reader :name, :type

  def initialize(name)
    @name = name
    case name.downcase
    when 'rock'
      @type = Rock.new
    when 'paper'
      @type = Paper.new
    when 'scissor'
      @type = Scissor.new
    else
      puts 'No such a move!'
    end
  end
  
end
