# Exercise:
# Create a nested while loop to loop through the teams array from the example above and print out each name in a sentence.

# teams = [
#   ["Matt", "Junior"],
#   ["Adrian", "Ron"],
#   ["Kiko", "Leon"]
# ]

# teams.each do |team|
#   team.each do |person|
#     # p person
#     puts "His name is #{person}"
#   end
# end

# i = 0
# j = 0

# while i < teams.length
#   j = 0
#   while j < teams[i].length
#     p teams[i][j]
#     j += 1
#   end
#   i += 1
# end

# teams = [
#   ["Matt", "Junior"],
#   ["Adrian", "Ron"],
#   ["Kiko", "Leon"]
# ]

# i = 0

# while i < teams.length
#   # p teams[i]

#   j = 0

#   while j < teams[i].length
#     # p teams[i][j]
#     puts "His name is #{teams[i][j]}"
#     j += 1
#   end

#   i += 1
# end

# Exercise:
# Take a look at the solution above and get it working on your local computer
# Create a nested while loop to print out each item in the items nested array

# items = [
#   ["phone", "computer"],
#   ["broom", "dustpan"],
#   ["car", "truck"]
# ]

# i = 0 
# count = 0

# while i < items.length
#   # p items[i]
  
#   j = 0
  
#   while j < items[i].length
#     # p items[i][j]
#     count += 1

#     puts ""
#     puts "Item #{count}: #{items[i][j]}."
#     j += 1
#   end

#   i += 1
# end

# Exercise:
# Use a nested each loop to loop through the items array and print each item out in a sentence

# items.each do |item|
#   # p item

#   item.each do |thing|
#     puts "The items are: #{thing}."
#   end
  
# end

# Exercise:
# Create a function called chamorro_greeting and have it print out "Hafa Adai"
# Update the function to take in 1 parameter (name), and then have it print out "Hafa Adai <name>"

# def chamorro_greeting
#   puts "Hafa Adai"
# end

# def chamorro_greeting(name)
#   puts "Hafa Adai #{name}"
# end

# def chamorro_greeting(name, day)
#   puts "Hafa Adai #{name}, today is #{day}"
# end

# chamorro_greeting("junior", "Thursday")

# Exercise:
# Create a function called add which returns the sum of 2 numbers
# Create a function called subtract which returns the difference between 2 numbers
# Create a function called multiply which returns the product of 2 numbers
# Create a function called divide which returns the quotient of 2 numbers

# def add(a,b)
#   return a + b
# end

# def subtract(a,b)
#   return a - b
# end

# def multiply(a,b)
#   return a * b
# end

# def divide(a,b)
#   return a / b
# end

# puts "enter first number"
# a = gets.chomp.to_i
# puts "enter second number"
# b = gets.chomp.to_i

# puts "----"

# puts add(a,b)
# puts subtract(a,b)
# puts multiply(a,b)
# puts divide(a,b)

# puts add(divide(a,b),add(a,b)) 




# Exercise:
# Create a function named reverse_words that takes in one parameter, which is an array
# The function should then print out each word reversed (use the .reverse ruby method)

# def reverse_words(array)
#   # p word

#   array.each do |word|

#     p word.reverse
    
#   end
# end

# list = ["one", "two", "three", "four"]

# reverse_words(list)