require 'rspec'
require './lib/dock'
require './lib/renter'
require './lib/boat'

RSpec.describe Dock do
  it 'can initialize' do
    dock = Dock.new("The Rowing Dock", 3)
    expect(dock).to be_a(Dock)
  end

  it 'has name and max rental time' do
    dock = Dock.new("The Rowing Dock", 3)
    expect(dock.name).to eq("The Rowing Dock")
    expect(dock.max_rental_time).to eq(3)
  end

  it 'can rent a boat and add to rental log' do
    dock = Dock.new("The Rowing Dock", 3)
    kayak_1 = Boat.new(:kayak, 20)
    kayak_2 = Boat.new(:kayak, 20)
    sup_1 = Boat.new(:standup_paddle_board, 15)
    patrick = Renter.new("Patrick Star", "4242424242424242") 
    eugene = Renter.new("Eugene Crabs", "1313131313131313")
    dock.rent(kayak_1, patrick) 
    dock.rent(kayak_2, patrick)
    dock.rent(sup_1, eugene) 
    expect(dock.rental_log).to eq({kayak_1 => patrick, kayak_2 => patrick, sup_1 => eugene})
  end

  it "does not count any hours past the Dock's max rental time" do
    dock = Dock.new("The Rowing Dock", 3)
    kayak_1 = Boat.new(:kayak, 20)
    kayak_2 = Boat.new(:kayak, 20)
    sup_1 = Boat.new(:standup_paddle_board, 15)
    patrick = Renter.new("Patrick Star", "4242424242424242") 
    eugene = Renter.new("Eugene Crabs", "1313131313131313")
    dock.rent(kayak_2, patrick)
    kayak_2.add_hour
    kayak_2.add_hour
    kayak_2.add_hour
    expect(dock.charge(kayak_2)).to eq({card_number: "4242424242424242", amount: 60})
  end
end