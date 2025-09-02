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

# module Walkable
#   def walk
#     puts "The #{self.class} is walking."
#   end
# end

# class Person
#   include Walkable
# end

# class Dog
#   include Walkable
# end

# person = Person.new
# dog = Dog.new

# person.walk
# dog.walk

#Exercise/Homework:
# Task: Create a CLI but use a class and it's objects instead of hashes
# Instructions:
## Create a Book class that has attributes for title, author, and pages_read
## Create the initialize method
## Set up the attr_accessor
## Create a method called read that takes in 1 parameter (pages), which basically adds pages to @pages_read to update it based on how many pages the user read and then print out a message saying they've read x amount of pages
## Test it out by creating a book object (ex. book = Book.new)
## Test the read method by doing something like book.read(100)
# Now that you have that working, now use the skeleton for the loop do function down below
# Use gets.chomp to get input from the user.
# Provide a menu for the user to choose actions.
# Allow them to add a book
# List all books
# Read pages (uses the read method from your Book class)
# Exit
# Do this step by step!
# And run your code to test it at each step!

# -----------

class Book  # create a Book class
  
  def initialize(title, author, pages_read = 0) # method, attributes 
     @title = title
     @author = author
     @pages_read = pages_read   
  end 
  
  attr_accessor :title, :author, :pages_read

  def read(pages = 0) # input pages read, if none, default 0.
    @pages = pages
    @pages_read += pages # add pages to pages_read
    
    puts "You have inputted #{pages} pages read."

    puts "You have now read a total of #{@pages_read} pages, from the book #{@title}, written by #{@author}." # read x amount of pages
  end

end

# book1 = Book.new("Harry Potter", "J.K", 0)

# puts book1.read           # Tests
# puts book1.read(50)
# puts book1.read(100)

# ------------

# 1) Your Book class goes here

# 2) Start with an empty array to hold Book objects
books = []  # TODO: store Book instances here

# 3) Main menu loop
loop do
  puts "\nBook Manager"
  puts "1. Add a new book"
  puts "2. List all books"
  puts "3. Read pages"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp

  case choice
  when "1"
    # TODO:
    puts "Enter the title of the book: "
    title = gets.chomp
    
    puts "Enter the author of the book: "
    author = gets.chomp
    
    book = Book.new(title, author)
    
    books << book 
    
    puts "Book added!"
    # - Create a new Book with title and author
    # - Push it into books
    # - puts "Book added!"

    # p books
  when "2"
    # TODO:
    # - If books is empty, puts "No books yet."
    
    if books.empty?
      puts "No books yet."
    
    else
      books.each_with_index do |book, index| #Why .each do not work?
        puts "#{index + 1}. #{book.title} by #{book.author} (Pages read: #{book.pages_read})"
      end
    end
    # - Otherwise, loop with each_with_index and print:
    #   "#{index + 1}. #{book.title} by #{book.author} (Pages read: #{book.pages_read})"

  when "3"
    # TODO:
    # - If books is empty, puts "No books available. Please add a book first."
    if books.empty?
      puts "No books available. Please add a book first."
    
    else
        books.each_with_index do |book, index| # Why .each do not work?
          puts "#{index + 1}. #{book.title} by #{book.author} (Pages read: #{book.pages_read})"
        end

        puts "Enter the number of the book: "
        choice = gets.chomp.to_i

        if choice > 0 && choice <= books.length
          puts "How many pages did you read?"
          read_pages = gets.chomp.to_i

          book_number = choice - 1
          books[book_number].read(read_pages)

          puts "You have read #{read_pages} pages of #{books[book_number]}."
          
        end
    end
    # - Otherwise:
    #   * Show a numbered list of book titles
    #   * Prompt: "Enter the number of the book: "
    #   * Read number, convert to_i, and check it's between 1 and books.length
    #   * Prompt: "How many pages did you read? "
    #   * Read pages (to_i)
    #   * Call books[book_number - 1].read(pages)
    #   * Optional: puts a confirmation message

  when "4"
    puts "Goodbye!"
    break

  else
    puts "Invalid choice. Please try again."
  end
  
end

# puts books