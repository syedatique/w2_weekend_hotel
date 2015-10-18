class Hotel

  attr_reader :name, :postcode, :number_of_room, :guest, :available_room



  def initialize(options={})
    @name = options[:name]
    @postcode = options[:postcode]
    @number_of_room = options[:number_of_room] | 3
    # @rooms = options[:number_of_room].times.map { Room.new }
    @available_room=options[:available_room] | 3
    @guest = []
    
    
  end
  
  def add_person_to_list(person, guest_no)
    @guest.push(person)
    @available_room = number_of_room - guest_no
  end

  
  def rooms_available(hotel)
    a = number_of_room - guest.count
    puts "available room: #{a}"

  end

  def remove_person_from_list(person, guest_no)
    @guest.delete(person)
    # @available_room = available_room + guest_no
  end



end

