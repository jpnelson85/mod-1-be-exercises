# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized!"

contents = CSV.open("data/event_attendees.csv", headers: true, header_converters: :symbol)
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]

  
end
def clean_zipcode(zipcode)
  if zipcode.nil?
    zipcode = '00000'
  elsif zipcode.length == 5
    zipcode = zipcode
  elsif zipcode.length > 5
    zipcode = zipcode[0..4]
  elsif zipcode.legth < 5
    zipcode = zipcode.rjust(5, "0")
  end

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
 
  zipcode = clean_zipcode(row[:zipcode])

  puts "#{name} lives in #{zipcode}"
end
end


