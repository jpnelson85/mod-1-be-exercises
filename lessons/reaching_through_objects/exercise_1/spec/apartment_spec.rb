require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
  it 'exists' do
    apartment = Apartment.new
    expect(apartment).to be_an(Apartment)
  end

  it 'rented' do
    apartment = Apartment.new
    expect(apartment.is_rented?).to be(false)
    apartment.rent
    expect(apartment.is_rented?).to eq(true)
  end

  it 'adds rooms' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new("laundry")
    kitchen = Room.new("kitchen")
    bedroom = Room.new("bedroom")
    apartment.add_room(bathroom)
    apartment.add_room(laundry)
    apartment.add_room(kitchen)
    apartment.add_room(bedroom)
    expect(apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
  end

  it 'lists rooms alphabetically' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new("laundry")
    kitchen = Room.new("kitchen")
    bedroom = Room.new("bedroom")
    apartment.add_room(bathroom)
    apartment.add_room(laundry)
    apartment.add_room(kitchen)
    apartment.add_room(bedroom)
    expect(apartment.list_rooms_by_name_alphabetically).to eq(['bathroom', 'bedroom', 'kitchen', 'laundry'])
  end
  end