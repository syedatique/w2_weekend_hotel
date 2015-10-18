require 'pry-byebug'
require 'pg'

# get the connection to database through gem 'pg'
def db
  @db ||= PG.connect(dbname: 'guests', host: 'localhost')
end

def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "*** Hotel Database  ***"
  puts "Choose an option: "
  print "(l)ist guests, (a)dd guest, (r)emove guest or (q)uit: "
  gets.chomp.downcase
end

def unknown_action
  puts "Sorry, I don't know what to do with that"
end

def pause
  puts "press enter to continue"
  gets
end

def list_guests
  db.exec( "SELECT * FROM guests" ) do |result|
    result.each do |row|
      puts "#{row['id']}, #{row['name']}, #{row['room_price']}, #{row['description']}"
      #binding.pry; ''
    end
  end
end

def add_guests
  puts "Name"
  name = gets.chomp.split

  puts "Room Charge"
  room_price = gets.chomp.to_i

  print "Pls provide some description:   "
  description = gets.chomp

  sql = "INSERT INTO guests (name, room_price, description) VALUES ('#{name}', '#{room_price}', '#{description}')"

  db.exec(sql)
end

def remove_guests
  list_guests
  print "enter the ID of the ex-guest: "
  id = gets.to_i
  sql = "DELETE FROM guests WHERE id = #{id}"
  db.exec(sql)
end

begin
  response = menu

  until response == 'q'
    case response
    when 'l'
      list_guests
    when 'a'
      add_guests
    when 'r'
      remove_guests
    else
      unknown_action
    end

    pause

    response = menu
  end
ensure
  db.close
end