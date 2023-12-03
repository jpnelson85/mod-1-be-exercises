class Reunion
  attr_reader :name,
              :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost_event
    total_cost_of_events = 0
    @activities.each do |activity|
      total_cost_of_events += activity.total_cost
    end
    total_cost_of_events
  end

  def participant_dues
    result = Hash.new(0)
    @activities.each do |activity|
      activity.owed.each do |name, amt|
        result[name] += amt
      end
    end
    result
  end

  def print_summary
    puts participant_dues
  end
end