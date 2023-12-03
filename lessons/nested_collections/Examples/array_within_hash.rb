pizza_toppings = {
  veggies: ["green peppers", "jalapeño", "mushrooms"],
  protein: ["pepperoni", "sausage", "sardines"],
  fruit: ["pineapple"]
}

puts pizza_toppings.count
# 1. what is pizza_toppings.count
p pizza_toppings.values
# 2. what is pizza_toppings.values
p pizza_toppings.values[2]
# 3. how can I access the element “pineapple”
pizza_toppings.values[0] << "olives"
p pizza_toppings
# 4. how can I add the element “olives” to the key “veggies”?
