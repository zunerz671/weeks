# Exercise:
# Task: Create a safe division method.
# Instructions:
# Create a file named error_handling.rb.
# Write a method that takes two numbers and divides them.
# Use begin and rescue to handle ZeroDivisionError.
# Use ensure to print a message indicating the operation is complete.

# def division_method(a, b)
#   begin
#     quotient = a / b
#   rescue ZeroDivisionError
#     puts "You can't divide by zero"
#     quotient = nil
#   ensure
#     puts "operation completed"
#   end

#   return quotient
# end

# a = gets.chomp.to_i
# b = gets.chomp.to_i

# p division_method(a, b)

#----#

# Activity:
# Task: Validate user input with raise.
# Instructions:
# Write a method that asks the user for a word.
# Use raise to check if the input is shorter than 3 characters.
# Use rescue to handle the exception and prompt the user again.

# def ask_word(word)
#   if word.length < 3
#     raise "Chose another word"
#   else
#     puts "Good word"
#   end  
# end

# puts "Enter a word"
# input_word = gets.chomp

# # puts input_word.length

# begin 
#   ask_word(input_word)
# rescue => error
#   puts "Your word is too short in length. Enter another word."
#   input_word = gets.chomp
#   ask_word(input_word)
# end

# Exercise:
# Task: Enhance the divide_numbers method.
# Instructions:
# Add another rescue clause to handle TypeError when non-numeric arguments are passed.
# Test the method with various inputs.

def division_method(a, b)
  begin
    quotient = a / b
  rescue ZeroDivisionError
    puts "Error: You can't divide by zero"
    # quotient = nil
  rescue NameError
    puts "Error: You need to input only numbers"
  rescue
    puts "Error: Something else happened"
  ensure
    puts "operation completed"
  end

  return quotient
end

# puts "Enter first number"
# a = gets.chomp

# puts "Enter second number"
# b = gets.chomp

# p division_method(a, b)

begin
  division_method(10)
rescue ArgumentError
  puts "Error: you have to enter two inputs"
  puts "--------"
end

begin
  p division_method("test", "test")
  puts "--------"
rescue ArgumentError
  puts "Error: you have to enter two inputs"
  puts "--------"
end

begin
  p division_method(10, 2)
  puts "--------"
rescue ArgumentError
  puts "Error: you have to enter two inputs"
  puts "--------"
end

begin
  p division_method(10, false)
  puts "--------"
rescue ArgumentError
  puts "Error: you have to enter two inputs"
  puts "--------"
end

