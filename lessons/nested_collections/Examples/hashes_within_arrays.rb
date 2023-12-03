food_feelings = [{:pizza => "tasty"}, {:calzone => "also tasty"}]

puts food_feelings.count
# 1. what is food_feelings.count
puts food_feelings.first.count
# 2. what is food_feelings.first.count
puts food_feelings.last.values
# 3. how can I access the value "also tasty"
food_feelings.last[:calzone] = "super delicious"
puts food_feelings
# 4. how can I change the value “also tasty” to “super delicious”
