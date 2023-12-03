# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
  # look at every element of nested_animals array
  # look at every element of animals
  # change animal into a string

  # return a single array of manipulated 'animal' objects
  
  
#   string_animals = []
#   nested_animals.each do |nested_animal|
#   nested_animal.each do |animal|
#    string_animals << animal.to_s
#   end
# end

# print string_animals


# 2. Return an unnested array of animals with length >= 4


# string_animals = []
#   nested_animals.each do |nested_animal|
#   nested_animal.each do |animal|
#     string_animals << animal
#   string_animals.each do |ani|
#     if animal.length >= 4
#       string_animals << ani
#     end
#   end
#   end
# end
# print string_animals



string_animals = []
nested_animals.each do |nested_animal|
  nested_animal.each do |animal|
    string_animals << animal.to_s
  end
end
long_animals = []

string_animals.each do |animal|
   if animal.length >= 4
    long_animals << animal
   end
end
p long_animals

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

# string_animals = []
#   nested_animals.each do |nested_animal|
#   nested_animal.each do |animal|
#     string_animals << animal.to_s
#   string_animals.each do |animal|
#     if animal.length >= 4
#     end
#   end
# end
# end