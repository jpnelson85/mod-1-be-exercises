pets = {:dog => {:name => "Chance", :weight => "45 pounds"},
        :cat => {:name => "Sassy", :weight => "15 pounds"}
       }
       p pets.count
# 1. what is pets.count
       p pets.keys
# 2. what is pets.keys
       p pets.values
# 3. what is pets.values
       p pets.values[1].values[1]
       p pets[:cat][:weight]
# 4. how can I access the element "15 pounds"
pets[:dog][:age] = 3
p pets
# 5. how can I add :age => 3 to the value of the key :dog
