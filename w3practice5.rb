# Exercise:
# Task: Create modules to namespace classes.
# Instructions:
# Create a new Ruby file named modules.rb.
# Define two modules: Mammals and Birds.
# In each module, create a class named Animal with a method speak.
# Instantiate objects from each class and call speak.


# module Mammals
  
#   class Animal
#     def speak(sound)
#       puts "Mammals make this sound: #{sound}."
#     end
#   end

# end

# module Birds
  
#   class Animal
#     def speak(sound)
#       puts "Birds make this sound: #{sound}."
#     end
#   end

# end

# mammal = Mammals::Animal.new
# bird = Birds::Animal.new

# mammal.speak("bark")
# bird.speak("chirp")

# -----------------------------

# Exercise: Create a Mixin for Shared Functionality
# Define a module called Driveable.
# Inside Driveable, define a method drive that returns or prints a message like "Driving the <class name>!".
# Hint - use the .class method
# Create two classes, Car and Motorcycle, in the same file.
# In each class, include the Driveable module.
# Instantiate objects from both Car and Motorcycle and call the drive method on each.
# Print or return the result so you can see that both classes share the same functionality.

# module Driveable
#   def drive(vehicle)
#     puts "Driving a #{self.class}...#{vehicle}. "
#   end
# end

# class Car 
#   include Driveable

#   def initialize(name)
#     @name = name
#     drive("and it is a #{@name}")
#   end
# end

# class Motorcycle 
#   include Driveable

#   def initialize(name)
#     @name = name
#     drive("and it is a #{@name}")
#   end
# end

# car = Car.new("Honda")
# motorcycle = Motorcycle.new("Honda Shadow")
# car.drive("Honda")

# -------------------------

# Exercise:
# Task: Create a module and include it in multiple classes.
# Instructions:
# Define a module Walkable with a method walk that outputs a walking message.
# Create two classes, Person and Dog.
# Include Walkable in both classes.
# Instantiate objects from each class and call walk.

module Walkable
  def walk
    puts "The #{self.class} is walking."
  end
end

class Person
  include Walkable
end

class Dog
  include Walkable
end

person = Person.new
dog = Dog.new

person.walk
dog.walk