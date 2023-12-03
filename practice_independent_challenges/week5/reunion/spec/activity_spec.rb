require './lib/activity'

RSpec.describe Activity do
  it 'exists' do
  activity = Activity.new("Brunch")
  expect(activity).to be_a(Activity)
  end

  it 'has attributes' do
    activity = Activity.new("Brunch")
    expect(activity.name).to eq("Brunch")
    expect(activity.participants).to eq({})
  end

  it 'can add participants' do
    activity = Activity.new("Brunch")
    expect(activity.participants).to eq({})
    activity.add_participant("Maria", 20)
    expect(activity.participants).to eq({"Maria" => 20})
    activity.add_participant("Luther", 40)
    expect(activity.participants).to eq({"Maria" => 20, "Luther" => 40})
  end

  it 'total cost method' do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)
    expect(activity.total_cost).to eq(20)
    activity.add_participant("Luther", 40)
    expect(activity.total_cost).to eq(60)
  end

  it 'total participants method' do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)
    expect(activity.total_participants).to eq(1)
    activity.add_participant("Luther", 40)
    expect(activity.total_participants).to eq(2)
  end

  it 'split total cost' do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)
    activity.add_participant("Luther", 40)
    expect(activity.split).to eq(30)
  end

  it 'owed method' do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)
    activity.add_participant("Luther", 40)
    expect(activity.owed).to eq({"Maria" => 10, "Luther" => -10})
  end
end