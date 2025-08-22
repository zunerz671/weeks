# Exercise/Mini-Project:
# Task: Build a program that allows users to:
# Add new items to a catalog.
# Each item should have a name, category, price.
# Display all items in the catalog.
# Instructions:
# Use arrays and hashes to store item data.
# Implement a simple menu to interact with the catalog.
# Skeleton to build off of:

# Reference for what your data should look like:
# products = [
#   { name: "Laptop", price: 1000 },
#   { name: "Book", price: 20 },
#   { name: "Coffee Mug", price: 10 }
# ]

# 1. Create an array to hold all catalog items
catalog = []

# 2. Method to display the menu
def display_menu
  puts "\nCatalog Menu:"
  puts "1. Add an item"
  puts "2. View all items"
  puts "3. Exit"
  puts "4. Remove"
  print "Enter your choice: "
end

def choice_1(array)
    # puts "You're in choice 1"
  puts "Please enter the item name:"
  item_name = gets.chomp

  puts "Please enter the item category:"
  item_category = gets.chomp

  puts "Please enter the item price:"
  item_price = gets.chomp.to_f

  # puts "#{item_name}, #{item_category}, #{item_price}"
  
  item = {
    name: item_name,
    category: item_category,
    price: item_price
  }
  array << item

  puts "Item added: name: #{item[:name]}, item: #{item[:category]}, price: $#{item[:price]}"

  return array

end

def choice_2(array)
  if array.empty?
    puts "No items found."
  else
    puts "Current catalog:"
    array.each do |item|
      puts "----"
      puts "item: #{item[:name]}, category: #{item[:category]}, price: $#{item[:price]}"
    end
  end

end

def choice_4(array)
  removed_array = array
  # i = 0

  if array.empty?
    puts "The Catalog is empty and has nothing to remove."
  else
    puts "What is the item you would like to remove?:"
    selected_item = gets.chomp

    array.each do |item|
      # p item[:name]
      # p selected_item == item[:name]

      if selected_item == item[:name]
        removed_array.delete_if { |h| h[:name] == selected_item }

        puts "#{selected_item} removed from catalog."
        # removed_array = array.delete(selected_item)
      else
        puts "There is not item in the catalog with that name."
      end
    end
  end
  
  return removed_array
end

loop do
  # 3. Call the display_menu method
  display_menu
  # 4. Get the user's choice
  choice = gets.chomp.to_i

  if choice == 1

    choice_1(catalog)

    # ---- ADD AN ITEM ----
    # TODO: Prompt the user for the item name
    # TODO: Prompt for category
    # TODO: Prompt for price (convert to float)
    # TODO: Add (push) the new item hash into the 'catalog' array
    # TODO: Print a confirmation message (e.g., "Item added.")

  elsif choice == 2

    choice_2(catalog)

    # ---- VIEW ALL ITEMS ----
    # TODO: Check if 'catalog' is empty.
    # If empty, print "No items found."
    # Otherwise, loop through 'catalog' and print each item's details:
    # name, category, price, and tags joined by commas.

  elsif choice == 3
    # ---- EXIT ----
    puts "Goodbye!"
    break

  elsif choice == 4

    choice_4(catalog)
    
  else
    # ---- INVALID CHOICE ----
    puts "Invalid choice. Please try again."
  end
end