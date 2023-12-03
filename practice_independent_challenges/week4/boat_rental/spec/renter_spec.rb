require 'rspec'
require './lib/renter'
require './lib/boat'

RSpec.describe Renter do
  describe '#name' do
    it 'returns the name of the renter' do
      renter = Renter.new("Patrick Star", "4242424242424242")
      expect(renter).to be_a(Renter)
      expect(renter.name).to eq("Patrick Star")
    end
  end

  describe '#credit_card_number' do
    it 'returns the credit card number of the renter' do
      renter = Renter.new("Patrick Star", "4242424242424242")
      expect(renter.credit_card_number).to eq("4242424242424242")
    end
  end
end
