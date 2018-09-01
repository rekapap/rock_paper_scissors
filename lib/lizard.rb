class Lizard
  attr_reader :name, :win, :icon
  def initialize
    @name = 'lizard'
    @win = %w[spock paper]
    @icon = '🦎'
  end
end