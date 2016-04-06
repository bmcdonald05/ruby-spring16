class Person
    def initialize(name, age)
        @name = name
        @age = age
    end
    def name
        @name
    end
    def age
        @age
    end
    def birthday
    	@age += 1
    end
    def change_name(name)
    	@name = name
    end
end

my_profile = Person.new("Aaron", 33)

puts my_profile.age

my_profile.birthday

puts my_profile.age

puts "I am no longer #{my_profile.name}..."

my_profile.change_name("King Ruby")

puts "My name is now #{my_profile.name}."


