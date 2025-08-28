### -- HW --
# class Player
  
#   def initialize(name, sport, division)
#     @name = name
#     @sport = sport
#     @division = division
#   end

#   attr_reader :name, :sport, :division

#   attr_writer :name, :sport, :division

#   def profile
#     return "Player name: #{@name}, Sport: #{@sport}, Division: #{@division}"
#   end
# end

# player1 = Player.new("Junior", "volleyball", "open")

# p player1.name
# p player1.sport
# p player1.division
# p player1.profile

# -------- 

# Exercise:
# Task: Create a Person superclass and Student and Teacher subclasses.
# Instructions:
# Define a Person class with attributes name and age, and a method introduce.
# Create Student and Teacher classes that inherit from Person.
# Add a grade attribute to Student and a subject attribute to Teacher.
# Instantiate objects from both subclasses and call their methods.

# Exercise:
# Modify your student class to have a school attribute and update the initialize and introduce methods accordingly
# Modify your teacher class to have a years_of_experience attribute and update the initialize and introduce methods accordingly

# class Person
  
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def introduce
#     return "Person name: #{@name}, Age: #{@age}"
#   end


# end

# class Student < Person
  
#   def initialize(name, age, grade, school)
#     super(name, age)
#     @grade = grade
#     @school = school
#   end

#   def introduce
#     super + ", Student grade: #{@grade}, School: #{@school}."
#   end

# end

# class Teacher < Person
  
#   def initialize(name, age, subject, years_of_experience)
#     super(name, age)
#     @subject = subject
#     @years_of_experience = years_of_experience
#   end

#   def introduce
#     super + ", Subject taught: #{@subject}, Years of experience: #{@years_of_experience}"
#   end

# end

# person1 = Person.new("Junior", 47)
# p person1.introduce
# puts " ---- "

# student1 = Student.new("ABC", 14, "9th", "Oceanview")
# p student1.introduce
# puts " ---- "

# teacher1 = Teacher.new("XYZ", 47, "Programming", 1)
# p teacher1.introduce
# puts " ---- "

# -------- 

# Exercise/Homework:
# Task: Plan and then create a program that utilizes inheritance and polymorphism to model a real-world scenario.
# Instructions:
# Choose a scenario, such as a library system, zoo management, or school administration.
# Identify the classes needed, along with their attributes and methods.
# Determine the superclass and subclasses.
# Decide how polymorphism and method overriding will be used.
# Example Scenarios:
# Library System:
# Superclass: LibraryItem 
#   (@title - Superclass, @type - Subclass, Return "x is checked out" - Method)
# Subclasses: Book, Magazine, DVD
# Common Methods: checkout, return_item "Book is checked out", "Magazine is checked", "DVD is check out"
# Polymorphism: Different checkout behaviors for each item type.
# Zoo Management:
# Superclass: Animal
# Subclasses: Mammal, Bird, Reptile
# Common Methods: feed, make_sound
# Polymorphism: Different make_sound implementations.
# Task: Begin implementing your planned program.
# Instructions:
# Start coding the superclass and subclasses.
# Implement attributes, methods, and use inheritance.
# Apply polymorphism by overriding methods.
# Create instances and demonstrate interactions.

class LibraryItem
  
  def initialize(title, status = "Available")
    @title = title
    @status = status
  end
  
  def information
    return "Title: #{@title}, Status: #{@status}"
  end

end
  
# class Book < LibraryItem       
  
#   def initialize(title, action)
#     super(title)
#     @action = action

#     if action == "checkout"
#       checkout
    
#     elsif action == "return item"
#       return_item

#     end

#   end

#   def checkout
#     return super + ", Item type: Book" + ", has been checked out."
#   end

#   def return_item
#     return super + ", Item type: Book" + ", has been returned."
#   end

#   def information
#     super + ", Item type: Book"
#   end

# end

class ItemType < LibraryItem
  
  def initialize(title, type, action = @status)
    super(title)
    @action = status
    @type = type
  end

  def information
    super + ", Item type: #{@type}"
  end

end

# library_item = LibraryItem.new("Harry Potter")
# p library_item.information
# puts " ---- "

item_type1 = ItemType.new("Harry Potter", "Book")
# p item_type1.information
# puts "-" * 40

item_type2 = ItemType.new("SI", "Magazine")
# p item_type2.information
# puts "-" * 40

item_type3 = ItemType.new("T2", "DVD")
# p item_type3.information
# puts "-" * 40

items = [item_type1, item_type2, item_type3]

items.each do |item|
  p item.information
  puts "-" * 40
end

# item_type1 = Book.new("Harry Potter", "checkout")
# p item_type1.information
# puts " ---- "