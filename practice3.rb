# Homework:
# Part 1:
# Create a more advanced number guessing game that incorporates conditionals and loops.
# Instructions:
# Game Requirements:
# The program selects a random number between 1 and 100.
# The user has 7 attempts to guess the number.
# After each guess, inform the user if the guess is too high, too low, or correct.
# If the user guesses correctly, congratulate them and exit the game.
# If the user runs out of attempts, reveal the number.
# Hints:
# Use rand(1..100) to generate a random number.
# Keep track of the number of attempts using a counter.
# Use a while loop to manage the attempts.



# puts "Lets play a number guessing game. I will chose a random number from 1 to 100 and you have to guess my random number in 7 attempts. 

# What is you your first guess?"

# random_number = rand(1...100)
# guess = gets.chomp
# guess_i = guess.to_i
# attempts = 0
# puts random_number

# while attempts < 7
  
#   if guess_i == random_number
#     puts "Congrats, #{guess_i} is the random number!"
#     break

#   elsif guess_i < random_number
#     attempts += 1
#     puts "Sorry, #{guess_i} is too low. Guess again"
#     guess_i = gets.chomp.to_i
  
#   elsif guess_i > random_number
#     attempts += 1
#     puts "Sorry, #{guess_i} is too high. Guess again"
#     guess_i = gets.chomp.to_i
#   end

# end

# puts "Sorry, you were not able to guess the random number. The random number was #{random_number}"



# Part 2:
# Challenge:
# Add additional features to the guessing game:
# After each guess, tell the user how many attempts they have left.
# Allow the user to play again after the game ends.
# Validate user input to ensure it's a number between 1 and 100.
# Instructions:
# Modify it to include the new features.
# Use loops and conditionals to handle the additional logic.

# play_again = "y"

# puts "Lets play a number guessing game. I will chose a random number from 1 to 100 and you have to guess my random number in 7 attempts." 

# while play_again == "y"
#   puts "What is you your first guess?"

#   random_number = rand(1...100)
#   guess = gets.chomp
#   guess_i = guess.to_i
#   attempts = 1
#   remaining_attempts = 7
#   puts random_number

#   if guess_i > 100 || guess_i < 1
#     puts "Please guess a number from 1 to 100"
#     guess_i = gets.chomp.to_i
#   end

#   while attempts < 7
    
#     if guess_i == random_number
#       attempts = 1
#       puts "Congrats, #{guess_i} is the random number!"
#       puts "It took you #{attempts} try/tries!"
#       break

#     elsif guess_i < random_number
#       remaining_attempts = 7 - attempts
#       attempts += 1
#       puts "Sorry, #{guess_i} is too low. Guess again"
#       puts "You have #{remaining_attempts} tries left"
#       guess_i = gets.chomp.to_i
    
#     elsif guess_i > random_number
#       remaining_attempts = 7 - attempts
#       attempts += 1
#       puts "Sorry, #{guess_i} is too high. Guess again"
#       puts "You have #{remaining_attempts} tries left"
#       guess_i = gets.chomp.to_i
#     end

#   end

#   if attempts == remaining_attempts
#     puts "Sorry, you were not able to guess the random number. The random number was #{random_number}"
#   end

#   puts "Would you like to play again? Type Y or N"

#   play_again = gets.chomp.downcase

# end

# puts "Thanks for playing"

# secret_number = rand(1..100)
# attempts = 0
# max_attempts = 7

# puts "Welcome to the Number Guessing Game!"
# puts "You have #{max_attempts} attempts to guess the secret number between 1 and 100."

# while attempts < max_attempts
#   attempts += 1
#   puts "Attempt #{attempts}: Enter your guess:"
#   guess = gets.chomp.to_i

#   if guess == secret_number
#     puts "Congratulations! You guessed the secret number in #{attempts} attempts."
#     break
#   elsif guess < secret_number
#     puts "Too low!"
#   else
#     puts "Too high!"
#   end

#   if attempts == max_attempts
#     puts "Sorry, you've used all your attempts. The secret number was #{secret_number}."
#   end
# end

# Exercise:
# First create an array of your favorite colors.
# Use puts to display 3 total indexes from your array.
# Create 2 more arrays of your choice
# Print those out with p and then print them out with puts to see the difference

# num1 = 10
# num2 = 2

# fav_colors = ["blue", "red", "white", num1.to_s]
# array2 = ['circle', 'square', 'triangle', true]
# array3 = [10, 20, 30, "forty", array2]

# puts fav_colors
# p fav_colors

# puts array2
# p array2

# puts array3
# p array3

# Exercise:
# Task: Work with your colors array to practice these operations.
# Instructions:
# Access and print the first and last colors.
# Change the second color to a different one.
# Add a new color to the array.
# Remove the last color from the array.
# Print the updated array and its length.
# Bonus:
# Find how to add and remove from the beginning of an array


# p colors[0]
# p colors[2]

# colors[1] = "purple"

# colors.push("green")

# # p colors

# colors.pop

# p colors

# p colors.length

# colors.prepend("orange")

# p colors

# colors.shift(1)

# p colors

colors = ["blue", "red", "white"]

# i = 0

# while i < colors.length
#   puts "The color is #{colors[i]}."

#   i += 1
# end

# Exercise:
# Use an each loop to print out each element in your colors array
# Add a sentence so it's printing a sentence with each element in the loop

# colors.each do |color|
#   puts "The color is #{color}"
# end

# Exercise:
# Print out "Bob"
# Print out "Charlie"
# Print out "Frank"

teams = [
  ["Alice", "Bob"],
  ["Charlie", "David"],
  ["Eve", "Frank"]
]

print teams[0][1]
print teams[1][0]
print teams[2][1]
