class Room

attr_reader :capacity, :price, :people
# attr_accessor :people

def initialize (options = {})
  @capacity = options[:capacity].to_i | 1
  @price = options[:price].to_i | 10
  @people = {}

end

def add_people(person)
  @people[person.name] = person
  # @people = person
end

def remove_people(person)
  # @people.reject! {|name| name == :person}
  @people.delete(person)
end







end

