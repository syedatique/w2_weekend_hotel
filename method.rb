
def menu
  puts "clear"
  puts "*** Hotel Mnnagement Tool ****"

  puts
  puts
  puts "1. Rooms Availability"
  puts "2. Check In"
  puts "3. Check Out"
  puts 
  puts "0. Quit"
  puts
  print "..>"
  gets.to_f
end

def rooms_available(hotel)
  a = hotel.number_of_room - hotel.guest.count
  puts "available room: #{a}"

end

def check_in(hotel)
  puts "How many persons?"
  puts
  guest_no = gets.chomp.to_i
  puts "Name of the person?"
  puts
  name = gets.chomp

  person = Person.new(name)
  # binding.pry
  hotel.add_person_to_list(person, guest_no)

end

def add_guest_to_room(room)
  puts "Name of the person?"
  puts
  name = gets.chomp

  person = Person.new(name)
  room.add_people(person)

end

def check_out(hotel)
  puts "How many persons?"
  puts
  guest_no = gets.chomp.to_i
  puts "Name of the person?"
  puts
  name = gets.chomp
  person = Person.new(name)

  hotel.remove_person_from_list(person, guest_no)
end

def remove_guest_from_room(room)
  puts "Please type the name of the person again:"
  puts
  name = gets.chomp
  person = Person.new(name)
  room.remove_people(person)
end




# def list_borrowed_books(library)

#   library.list_borrowed_books

# end

# def  create_book(library)
#   print "Title: "
#   title = gets.chomp

#   print "Genre: "
#   genre = gets.chomp

#   book = Book.new(title: title, genre: genre)
#   #binding.pry

#   library.add_book(book)

# end

# def  create_person(library)
#  print "Name:  "
#  name = gets.chomp

#  person = Person.new(name: name)

#  library.add_person(person)
# end

# def list_people(library)
#   puts library.list_people
# end


# def list_books(library)
#   puts "This is the list:\n"
#   puts "#{library.list_books}"
#   #puts "this is the list: #{library.list_books}"
# end


# def lend_book(library)
# #puts "This is the list of the books: #{library.list_books}"
# puts library.list_books
# puts
# print "which book you want to lend (by name): "
# book_title = gets.chomp
# puts

# puts library.list_people
# print "which person is going to borrow it (by name): "
# person_name = gets.chomp

# library.lend(person_name, book_title)
# end

# def return_book(library)
#   puts library.list_books
#   puts
#   print "which book you want to return (by name): "
#   book_title = gets.chomp
#   puts
#   puts library.list_people
#   print "which person is going to return it (by name): "
#   person_name = gets.chomp

#   library.return(person_name, book_title)  
# end
