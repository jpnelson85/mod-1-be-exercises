class Contestant
  attr_reader :first_name, :last_name, :age, :state_of_residence, :spending_money

  def initialize(details)
    @first_name = details[:first_name]
    @last_name = details[:last_name]
    @age = details[:age]
    @state_of_residence = details[:state_of_residence]
    @spending_money = details[:spending_money]
    @game_interests = []
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def out_of_state?
    @state_of_residence != 'CO'
  end

  def game_interests
    @game_interests
  end

  def add_game_interest(game_name)
    @game_interests << game_name
  end
end
