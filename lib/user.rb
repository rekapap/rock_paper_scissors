require './lib/choice'

class User
  attr_accessor :name, :choice

  def initialize(name)
    @name = name
  end

  def set_choice(choice)
    @choice = Choice.new(choice)
  end

end