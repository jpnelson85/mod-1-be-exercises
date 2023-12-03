require './lib/room'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  it 'exists' do
    building = Building.new("623", "Savills Apartment Building")
    expect(building).to be_a(Building)
  end

  it 'has attributes' do
    building = Building.new("623", "Savills Apartment Building")
    expect(building.building_number).to eq("623")
    expect(building.building_name).to eq("Savills Apartment Building")
  end

  it 'can add apartments to building' do
    bldg = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new
    expect(bldg.list_apartments).to eq([])
    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_5)
    expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_5])
  end
end