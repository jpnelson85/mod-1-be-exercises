class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(person)
    @patrons << person
  end

  def yell_at_patrons
    @patrons.map do |peep|
      peep.upcase
    end
  end

  def over_capacity?
    if @patrons.count <= @capacity
      false
    else
      true
    end
  end
end
