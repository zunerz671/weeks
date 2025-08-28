# Exercise:
# Task: Create a new Ruby file called oop.rb and define an empty Person class.
# Instructions:
# Open VSCode and create a new file named oop.rb.
# Define an empty Person class.
# Create an instance of Person and assign it to a variable.
# Print the class of the instance using puts.

# Exercise:
# Task: Extend the Person class to include an age attribute.
# Instructions:
# Add methods set_age and get_age.
# Use @age as the instance variable for age.
# Create an instance of Person, set the name and age, and print them.

# Exercise:
# Task: Modify your Person class to use the initialize method.
# Instructions:
# In your Person class add an initialize method that takes name and age.
# Assign these parameters to @name and @age.
# Update object creation to pass in name and age (when you do .new).
# Test by printing out the person's name and age.

# Exercise:
# Task: Refactor your Person class to use attr_reader and attr_writer for name and age.
# Instructions:
# Replace getter and setter methods with attr_reader and attr_writer.
# Update your code to use person.name and person.age for accessing and modifying values.
# Test by creating a person, printing the name and age, updating them, and printing again.


class Person
  
  def initialize (name, age)
    @name = name
    @age = age  
  end

  attr_reader :name, :age

  attr_writer :name, :age

  # def set_name(name)
  #   @name = name
  # end

  # def get_name
  #   return @name
  # end

  # def set_age(age)
  #   @age = age
  # end

  # def get_age
  #   return @age
  # end

end

# puts "Enter Name:"
# name = gets.chomp

# puts "Enter Age:"
# age = gets.chomp.to_i

# person_1 = Person.new(name, age)

person_1 = Person.new("Junior", 47)
p person_1.name
p person_1.age

puts "Name: #{person_1.name}, Age: #{person_1.age}"

person_1.name = "Zunerz"
person_1.age = 48

p person_1.name
p person_1.age

puts "Name: #{person_1.name}, Age: #{person_1.age}"

# person_1 = Person.new
# person_1.set_name("Junior")
# p person_1.get_name
# person_1.set_age(100)
# p person_1.get_age

# person_2 = Person.new
# person_2.set_name("Neng")
# p person_2.get_name
# person_2.set_age(6)
# p person_2.get_age


# puts individual_1.class

# puts individual_1