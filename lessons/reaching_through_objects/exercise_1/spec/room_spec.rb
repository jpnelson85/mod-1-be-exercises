require 'rspec'
require './lib/room'

RSpec.describe Room do
  it 'exists' do
    room = Room.new('bathroom')
    expect(room).to be_a(Room)
  end

  it 'has bathroom' do
    room = Room.new('bathroom')
    expect(room.name).to eq('bathroom')
  end
end