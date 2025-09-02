# Exercise 1:
# Task: Create a Car class with instance variables and methods.
# Instructions:
# Define a Car class with an initialize method.
# Create instance variables @make, @model, and @year.
# Define an instance method car_info that returns a string with the car's details.
# Instantiate a Car object and call car_info.
# Exercise 2:
# Task: Create a Book class with instance variables and methods.
# Instructions:
# Define a Book class with an initialize method.
# Set up instance variables @title, @author, and @pages.
# Define a method book_info that returns a string with the book's details.
# Instantiate a Book object and call book_info.

# ---------------------

# Bonus:
# Add a module called Loggable which has a function called log which prints out a message with Time.now
# include that module in the Car and Book classes and call that method in the initialize methods for both classes
# Create new instances to test it out

# module Loggable
#   def log(vehicle)
#     puts "Time created: #{Time.now}...#{vehicle}"
#   end
# end

class Car
  # include Loggable
  attr_accessor :make, :model, :year
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    # log("Car information - Make: #{@make}, Model: #{@model}, Year: #{@year}")
  end

  def car_info
    return "Car information - Make: #{@make}, Model: #{@model}, Year: #{@year}"

    # puts "Car information - Make: #{@make}, Model: #{@model}, Year: #{@year}"
  end
end

class Book
  # include Loggable

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def book_info
    return "Book information - Title: #{@title}, Author: #{@author}, Pages: #{@pages}"
  end

end

car = Car.new("toyota", "tacoma", 2020)
car.car_info


# book = Book.new("HP", "JK", 10)
# p book.book_info



