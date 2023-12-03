require 'rspec'
require './lib/contestant'
require './lib/game'

RSpec.describe Contestant do
  it 'exists' do
    pick_4 = Game.new('Pick 4', 2)

  end
  it 'creates a contestant with personal details and spending money' do
    contestant = Contestant.new({
      first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money: 10
    })
    expect(contestant.first_name).to eq 'Alexander'
    expect(contestant.last_name).to eq 'Aigiades'
    expect(contestant.age).to eq 28
    expect(contestant.state_of_residence).to eq 'CO'
    expect(contestant.spending_money).to eq 10
  end

  it 'creates a contestant with no game interests' do
    contestant = Contestant.new({
      first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money: 10
    })
    expect(contestant.game_interests).to eq []
  end
  
  it 'returns the full name of the contestant' do
    contestant = Contestant.new({
      first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money

end