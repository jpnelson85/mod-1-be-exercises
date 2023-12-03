class Player
  attr_reader

  def initialize(details)
    @name = details[:name]
    @position = details[:position]
  end
end