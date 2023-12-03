class Street
  attr_reader :street_name
  attr_accessor :buildings
  
  def initialize(street_name)
    @street_name = street_name
    @buildings = []
  end

  def add_building(building)
    @buildings << building.building_name
  end

  def sort_buildings
    @buildings.map do |building|
      building
    end.sort
  end

  def number_of_available_apartments
    if @buildings.list_apartments.is_rented == false
      available_apartments << @buildings.list_apartments.
      available_apartments.count
    end
  end
end