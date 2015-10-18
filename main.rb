require 'pry-byebug'

require_relative 'room'
require_relative 'hotel'
require_relative 'person'

require_relative 'method'

room = Room.new(capacity: 1, price: 10)
hotel = Hotel.new(name: "Syed's hotel", postcode: "G4 0PA", number_of_room: 3)

# person = Person.new("Alice")


response = menu

until response == 0

  case response
  when 1
    rooms_available(hotel)
  when 2
    check_in(hotel)
    add_guest_to_room(room)
  when 3
     check_out(hotel)
     remove_guest_from_room(room)
  # when 4
  #  
  # when 5
  #   
  # when 6
  #   
  
  else
    puts "invalid options"


  end
  puts "Press enter to continue"
  gets

  response = menu


end



binding.pry; ''