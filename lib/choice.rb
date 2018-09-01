require './lib/rock'
require './lib/paper'
require './lib/scissors'

class Choice
  attr_reader :type

  def initialize(name)
    case name.downcase
    when 'rock'
      @type = Rock.new
    when 'paper'
      @type = Paper.new
    when 'scissors'
      @type = Scissors.new
    else
      raise ArgumentError.new('No such a move!')
    end
  end

end
