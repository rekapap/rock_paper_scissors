class Scissors
  attr_reader :name, :win, :icon
  def initialize
    @name = 'scissors'
    @win = %w[paper lizard]
    @icon = '✌'
  end
end
