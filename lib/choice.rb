require './lib/rock'
require './lib/paper'
require './lib/scissors'
require './lib/spock'
require './lib/lizard'

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
    when 'lizard'
      @type = Lizard.new
    when 'spock'
      @type = Spock.new
    else
      raise ArgumentError.new('No such a move!')
    end
  end

end
