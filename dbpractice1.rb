# # Variables

# # 1. Write a program that uses a variable to store a number, then prints that number plus 15.

# var1 = 5

# puts var1 + 15

# # 2. Write a program that uses a variable to store a word, then prints that word with all capital letters.

# word_var1 = "Junior"

# puts word_var1.upcase

# # 3. Write a program that uses variables to store two numbers, then prints the numbers multiplied together.

# num1 = 3
# num2 = 7

# puts num1 * num2

# 4. Write a program that uses a variable to store a word, then prints that word in reverse order.

# word = "Dinner"

# puts word.reverse

# 5. Write a program that uses a variable to store a number, then prints the number divided by 5.

# var = 20

# p var/5

# 6. Write a program that uses variables to store two words, then prints both words on the same line in all capital letters.

# word = "downcase"

# print word.upcase


# Conditionals

# 1. Use a variable to store a number, then write a condition that prints "Perfect" if the number is equal to 25, and prints "Not quite" otherwise.

# var = 7

# if var == 25
#   puts "Perfect, you pick 25."
# else
#   puts "Not quite, your number is #{var}, but the number is 25."
# end

# 2. Use a variable to store a number, then write a condition that prints "Too cold" if the number is less than 75, prints "Too hot" if the number is greater than 85, and prints "Just right" if the number is between 75 and 85 (inclusive).

# var = 900

# if var >= 75 && var <= 85
#   puts "Just right"
# elsif var > 85
#   puts "Too hot"
# elsif var < 75
#   puts "Too cold"
# end

# 3. Use variables to store two numbers, then write a condition that prints "Both numbers are even" if both numbers are even, and prints "At least one number is odd" otherwise.

# var1 = 7
# var2 = 10

# if var1 % 2 == 0 && var2 % 2 == 0
#   puts "Both numbers are even"
# elsif var1 % 2 != 0 || var2 != 0
#   puts "At least one number is odd"
# end

# 4. Use a variable to store a number, then write a condition that prints "Typhoon warning" if the number is over 150, and prints "All clear" otherwise.

# var1 = 160

# if var1 > 150
#   puts "Typhoon warning"
# else
#   puts "All clear"
# end

# 5. Use a variable to store a number, then write a condition that prints "Beginner" if the number is less than 3, prints "Intermediate" if the number is less than 7, prints "Advanced" if the number is less than 10, and prints "Expert" otherwise (only one print statement should occur).

# var = 10

# if var < 3
#   puts "Beginner"
# elsif var < 7
#   puts "Intermediate"
# elsif var < 10
#   puts "Advanced"
# else
#   puts "Expert"
# end

# 6. Use variables to store two strings, then write a condition that prints "Access granted" if either string equals "admin", and prints "Access denied" otherwise.

# var1 = gets.chomp.downcase
# var2 = gets.chomp.downcase

# if var1 == "admin" || var2 == "admin"
#   puts "Access Granted"
# else
#   puts "Access Denied"
  
# end

# 7. Use a variable to store a number, then write a condition that prints "Independence Day" if the number is less than 0, and prints "Liberation Day" otherwise.

# var1 = -1

# if var1 < 0
#   puts "Independence Day"
# else
#   puts "Liberation Day"
# end

# 8. Use a variable to store a string, then write a condition that prints "Valid email" if the string contains the @ symbol, and prints "Invalid email" otherwise.

# string = "wrong@"

# if string.include? ("@")
#   puts "Valid email"
# else
#   puts "Invalid email"
# end

# 9. Use variables to store a password and password confirmation, then write a condition that prints "Password doesn't match" if the two are different, and prints "Password confirmed" if they are the same.

# password1 = "password"
# password_confirm = "password"

# if password1 == password_confirm
#   puts "Password confirmed"
# else
#   puts "Password doesn't match"
# end

# 10. Use a variable to store a number, then write a condition that prints "Passing grade" if the number is greater than or equal to 70, and prints "Failing grade" otherwise.

# number = 61

# if number >= 70
#   puts "Passing grade"
# else
#   puts "Failing grade"
# end



# Loops

# 1. Write a while loop to print the numbers 1 through 12.

# i = 0

# while i < 12
#   i += 1
#   puts i
# end

# 2. Write a while loop that prints the phrase "Hafa Adai" 5 times.

# phrase = "Hafa Adai"
# i = 1

# while i < 6
#   puts phrase
#   i += 1
# end

# 3. Write a while loop that asks the user to enter a village name and will run forever until the user enters the word "Hagåtña".

# puts "Enter a village name"
# village = gets.chomp

# while village != "hagatna"
#   puts "You did not guess correctly. Guess again"
#   village = gets.chomp.downcase
# end

# puts "Congrats, you guessed Hagatna!"

# 4. Write a while loop that prints the temperatures from 75 to 95 degrees, increasing by 2 each time.

# temp = 75

# while temp <=95
#   puts temp
#   temp += 2
# end

# 5. Write a while loop that prints the year "2023" eight times.

# year = 2023

# i = 1

# while i <= 8
#   puts year
#   i += 1
# end

# 6. Write a while loop that asks the user to enter a rainfall amount in inches and will run forever until the user enters a number greater than 3.

