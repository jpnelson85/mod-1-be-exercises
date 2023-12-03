require 'rspec'
require './lib/player'

RSpec.describe Player do

  it 'exists with player name and position' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})
    expect(player).to be_a(Player)
  end

  it 'has attributes' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})
    expect(player.name).to eq("Luka Modric")
    expect(player.position).to eq("midfielder")
  end
end