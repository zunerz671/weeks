# Exercise:
# Create a shopping list program that allows the user to:
# Add items to the list.
# Remove items from the list.
# View the current list.

# puts "Welcome to the shopping list!"

# shopping_list = []

# puts "Current list: #{shopping_list.inspect}"

# loop do
#   puts "\nShopping List Menu:"
#   puts "1. Add Item"
#   puts "2. Remove Item"
#   puts "3. View List"
#   puts "4. Exit"

#   print "Enter your choice:"
#   choice = gets.chomp.to_i

#   if choice == 4
#     puts "Goodbye!"
#     break
#   elsif choice == 3
#     if shopping_list.empty?
#       puts "Your list is empty"
#     else
#       puts "Current Shopping List:"  
#       shopping_list.each_with_index do |item, index|
#         puts "#{index + 1}. #{item}"
#       end
#     end
#   elsif choice == 1
#     print "Enter item to add:"
#     item = gets.chomp
#     if item.empty?
#       puts "Item cannot be empty"
#     else
#       shopping_list << item
#       puts "#{item} added to the list"
#       # puts "Current list: #{shopping_list.inspect}"  
#     end
#   elsif choice == 2
#     if shopping_list.empty?
#       puts "List is empty; nothing to remove."
#     else
#       print "Enter item to remove: "  
#       item = gets.chomp
#       removed = shopping_list.delete(item)
#       if removed
#         puts "#{item} removed from the list."
#       else
#         puts "#{item} not found in the list."
#       end
#     end
#   else 
#     puts "You chose: #{choice}"
#   end
# end

# Exercise:
# Task: Write a method called sum_array that takes an array of numbers and returns their sum.
# Instructions:
# Define the sum_array method.
# Test it with different arrays.

# numbers = [2, 2, 3, 4, 5]
# sum = 0  -- # won't work if sum is outside the method. won't print sum at end

# def sum_array(nums) #can't be "numbers"?
#   sum = 0           #sum has to be inside the method?
#   nums.each do |num|
#     sum += num
#   end

#   return sum
# end

# puts sum_array(numbers)

# can't "p sum" if sum is declared outside function


# Exercise:
# Create a function called get_even_numbers that takes in 1 parameter (numbers) and returns a new array containing only even numbers


# def get_even_numbers(numbers)
#   even_numbers = []

#   numbers.each do |number|
#     if number % 2 == 0
#       even_numbers.push(number)
#     end
  
#   end
  
#   return even_numbers
# end

# number_list = [1,2,3,4,5,6]

# p get_even_numbers(number_list)

# Exercise:
# Copy and paste the above code into VSCode and run it to make sure it works
# Move the remove item logic into a function above, similar to the add_item function

def add_item(list)
  print "Enter item to add: "
  item = gets.chomp
  if item.empty?
    puts "Item cannot be empty."
  else
    list << item
    puts "#{item} added to the list."
  end

  return list
end

def remove_item(list)
  # puts "In remove list"
  if list.empty?
      puts "List is empty; nothing to remove."
  else
      print "Enter item to remove: "
      item = gets.chomp
      removed = list.delete(item) # returns the item or nil
      if removed
        puts "#{item} removed from the list."
      else
        puts "#{item} not found in the list."
      end
  end

  return removed
end

def view_item(list)
  # puts "In view list"
  
  if list.empty?
    puts "Your list is empty."
  else
    puts "Current Shopping List:"
    list.each_with_index do |item, index|
      puts "#{index + 1}. #{item}"
    end
  end

end

shopping_list = []

loop do
  puts "\nShopping List Menu:"
  puts "1. Add item"
  puts "2. Remove item"
  puts "3. View list"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp.to_i

  if choice == 4
    puts "Goodbye!"
    break
  elsif choice == 3
    # implementing the function
    view_item(shopping_list)

    # if shopping_list.empty?
    #   puts "Your list is empty."
    # else
    #   puts "Current Shopping List:"
    #   shopping_list.each_with_index do |item, index|
    #     puts "#{index + 1}. #{item}"
    #   end
    # end
  elsif choice == 1
    # implementing the function
    add_item(shopping_list)
  elsif choice == 2
    # implementing the function
    remove_item(shopping_list)
  else
    puts "You chose: #{choice}" # temporary fallback
  end
end