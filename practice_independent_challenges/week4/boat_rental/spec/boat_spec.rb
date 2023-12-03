require 'rspec'
require './lib/renter'
require './lib/boat'

RSpec.describe Renter do
  describe '#initialize' do
    it 'can initialize' do
      kayak = Boat.new(:kayak, 20) 
      expect(kayak).to be_a(Boat)
    end
  end
    
    it 'has type and price/hour attributes' do
      kayak = Boat.new(:kayak, 20)  
      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
    end

    it 'can add hours to hours rented' do
      kayak = Boat.new(:kayak, 20) 
      expect(kayak.hours_rented).to eq(0)
      kayak.add_hour
      kayak.add_hour
      kayak.add_hour
      expect(kayak.hours_rented).to eq(3)
    end
end

