class Building
  attr_reader :building_number,
              :list_apartments
  attr_accessor :building_name

  def initialize(building_number, building_name)
    @building_number = building_number
    @building_name = building_name
    @list_apartments = []
  end

  def add_apartment(apartment)
    @list_apartments << apartment
  end
end