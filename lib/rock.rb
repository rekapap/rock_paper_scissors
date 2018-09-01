class Rock
  attr_reader :name, :win, :icon
  def initialize
    @name = 'rock'
    @win = %w[scissors lizard]
    @icon = '✊'
  end
end
