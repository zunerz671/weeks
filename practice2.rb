# puts "Please enter a temperature"
# Exercise:
# Task: Write a program that asks the user for their exam score and outputs their grade.
# Instructions:
# Prompt the user to enter their score (0 to 100).
# Use if, elsif, and else statements to determine the grade:
# 90 and above: "A"
# 80 to 89: "B"
# 70 to 79: "C"
# 60 to 69: "D"
# Below 60: "F"

# puts "Please enter you score (0 to 100)"

# score = gets.chomp
# score_i = score.to_i

# if score == "0"
#   puts "F"
# elsif score_i == 0
#   puts "Please enter you score, as a number, from 0 to 100" 
# elsif score_i >= 90
#   puts "A"
# elsif score_i >= 80
#   puts "B"
# elsif score_i >= 70
#   puts "C"
# elsif score_i >= 60
#   puts "D"
# elsif score_i < 60
#   puts "F"

# end  

# Exercise:
# Task: Create a program that determines if a user can access a restricted area.
# Instructions:
# Ask the user for their age and whether they have a VIP pass.
# Grant access if:
# The user is 18 or older or has a VIP pass.

# puts "What is you age?"

# age = gets.chomp
# age_i = age.to_i

# puts "Do you have a VIP pass?"

# pass = gets.chomp.downcase
# has_pass = pass == "yes"

# if age_i >= 18 || has_pass
#   puts "Welcome, you can come in!"
# else
#   puts "You can not come in."
# end


# Challenge:
# Write a program that checks if a number entered by the user is both positive and even.
# Instructions:
# Prompt the user to enter a number.
# Use an if statement with logical operators to check if the number is greater than zero and divisible by 2.
# Output appropriate messages.

# puts "Chose a whole number"

# number = gets.chomp
# number_i = number.to_i

# if number_i % 2 == 0
#   puts "Your number is even"
# else
#   puts "Your number is odd"
# end

# Exercise:
# Create a while loop that counts from 0 - 100
# Create a while loop that counts from 50 - 1

# i = 0

# while i <= 100
#   puts "#{i}"
#   i += 1
# end

# puts "enter a number"

# number

# i = 50

# while i > 0
#   puts "#{i}"
#   i -= 2
# end

# Activity:
# Task: Create a guessing game where the user has to guess a secret number between 1 and 10.
# Instructions:
# Set a secret number (e.g., secret_number = 7).
# Use an until loop to prompt the user to guess the number.
# Provide feedback if the guess is too high or too low.
# Congratulate the user when they guess correctly.

# secret_number = 7
# guess = -1

# until guess == secret_number
#   puts "Pick a number from 1 to 10"
#   guess = gets.chomp.to_i
  
#   if guess == secret_number
#     puts "Congrats, you picked the secret number!"
#   elsif guess < secret_number
#     puts "Sorry, #{guess} is too low"
#   else guess > secret_number
#     puts "Sorry, #{guess} is too high"
#   end

# end

# Activity:
# Task: Write a program that prints numbers from 1 to 20, but:
# Skips numbers divisible by 3.
# Stops the loop entirely if the number exceeds 15.
# Instructions:
# Use a while loop to iterate from 1 to 20.
# Use next to skip numbers divisible by 3.
# Use break to exit the loop if the number exceeds 15.
# Print the numbers that are not skipped.

i = 0

while i <= 20

  i += 1

  if i > 15
    break
  end

  if i % 3 == 0
    next
  end

  puts i
 
end