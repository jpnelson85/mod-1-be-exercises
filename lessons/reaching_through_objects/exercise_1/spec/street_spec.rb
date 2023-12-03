require './lib/room'
require './lib/apartment'
require './lib/building'
require './lib/street'

RSpec.describe Street do
  it 'exists' do
    adlington = Street.new("Adlington Road")
    expect(adlington).to be_a(Street)
  end

  it 'can add owned buildings' do
    adlington = Street.new("Adlington Road")
    bldg = Building.new("623", "Savills Apartment Building")
    adlington.add_building(bldg)
    expect(adlington.buildings).to eq(["Savills Apartment Building"])
  end

  it 'sort owned buildings on street' do
    adlington = Street.new("Adlington Road")
    bldg = Building.new("623", "Savills Apartment Building")
    zebra = Building.new("123", "Zebra Apartments")
    adlington.add_building(zebra)
    adlington.add_building(bldg)
    expect(adlington.sort_buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
  end

  it 'number of apartments not currently rented' do
    adlington = Street.new("Adlington Road")
    bldg = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new
    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_5)
    expect(adlington.number_of_available_apartments).to eq(3)
  end
end