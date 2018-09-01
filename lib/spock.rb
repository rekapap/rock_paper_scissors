class Spock
  attr_reader :name, :win, :icon
  def initialize
    @name = 'spock'
    @win = %w[scissors rock]
    @icon = '🖖'
  end
end