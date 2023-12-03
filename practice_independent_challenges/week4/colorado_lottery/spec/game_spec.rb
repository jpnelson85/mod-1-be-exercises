require 'rspec'
require './lib/contestant'
require './lib/game'

RSpec.describe Game do
  it 'exists' do
    pick_4 = Game.new('Pick 4', 2)
    expect(pick_4).to be_a(Game)
  end

  it 'creates a game with a name and cost' do
    game = Game.new('Pick 4', 2)
    expect(game.name).to eq ('Pick 4')
    expect(game.cost).to eq (2)
  end

  it 'creates a game with a national drawing option' do
    game = Game.new('Mega Millions', 5, true)
    expect(game.national_drawing?).to eq true
  end

  it 'creates a game with a non-national drawing option' do
    game = Game.new('Pick 4', 2)
    expect(game.national_drawing?).to eq false
  end
end
end