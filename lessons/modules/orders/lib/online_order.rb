# ./online_order.rb
module OnlineOrder

  def confirmation(thing)
    "You got #{thing}."
  end

  def review
    "Please rate your order within 30 days."
  end

  def delivery(type, time_line)
    "Your #{type} will arrive in #{time_line}."
  end

end