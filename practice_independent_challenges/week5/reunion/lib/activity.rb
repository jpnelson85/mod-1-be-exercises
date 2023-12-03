class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(participant, paid)
    @participants[participant] = paid
  end

  def total_cost
    total = 0
    @participants.values.each do |cost|
    total += cost
    end
    total
  end

  # def total_cost
  #   @participants.values.sum
  # end

  def total_participants
    @participants.keys.count
  end

  def split
    total_cost / total_participants
  end

  def owed
    @participants.map do |participant, paid|
      [participant, split - paid]
    end.to_h
  end
end