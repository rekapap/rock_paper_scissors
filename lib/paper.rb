class Paper
  attr_reader :name, :win, :icon
  def initialize
    @name = 'paper'
    @win = %w[rock spock]
    @icon = '✋'
  end
end
