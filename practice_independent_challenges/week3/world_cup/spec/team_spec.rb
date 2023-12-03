require './lib/team'
require './lib/player'

RSpec.describe Team do

  it 'exists' do
    team = Team.new("France")
    expect(team).to be_a(Team)
  end

  it 'has attributes' do
    team = Team.new("France")
    expect(team.country).to eq("France")
    expect(team.eliminated?).to eq(false)
    team.eliminated
    expect(team.eliminated?).to eq(true)
    expect(team.players).to eq([])
  end

  it 'can add players' do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})  
    team.add_player(mbappe)
    team.add_player(pogba)
    expect(team.players).to eq([mbappe, pogba])
  end

  it 'players by position method' do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})  
    team.add_player(mbappe)
    team.add_player(pogba)
    expect(team.players_by_position("midfielder")).to eq([pogba])
    expect(team.players_by_position("defender")).to eq([])
  end

end