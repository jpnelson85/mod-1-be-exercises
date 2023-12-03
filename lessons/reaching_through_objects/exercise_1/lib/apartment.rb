class Apartment
  attr_reader :is_rented
  attr_accessor :rooms

  def initialize
      @is_rented = false
      @rooms = []
  end

  def is_rented?
      @is_rented
  end

  def rent
    @is_rented = true
  end

  def add_room(room)
    if @rooms.count < 4
    @rooms << room
    end
  end

  def list_rooms_by_name_alphabetically
    sorted_names = []
    @rooms.each do |room|
      sorted_names << room.name
    end
    sorted_names.sort
  end
end