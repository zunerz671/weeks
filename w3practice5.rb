# Exercise:
# Task: Create modules to namespace classes.
# Instructions:
# Create a new Ruby file named modules.rb.
# Define two modules: Mammals and Birds.
# In each module, create a class named Animal with a method speak.
# Instantiate objects from each class and call speak.


module Mammals
  
  class Animal
    def speak(sound)
      puts "Mammals make this sound: #{sound}."
    end
  end

end

module Birds
  
  class Animal
    def speak(sound)
      puts "Birds make this sound: #{sound}."
    end
  end

end

mammal = Mammals::Animal.new
bird = Birds::Animal.new

mammal.speak("bark")
bird.speak("chirp")