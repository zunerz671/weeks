# Task: Create a nested array representing a tic-tac-toe board and access specific cells.
# Instructions:
# Define a 3x3 nested array to represent the board.
# Set some positions with 'X' or 'O'.
# Print the board to the console.

# board = [
#   [' ', ' ', ' '],
#   [' ', ' ', ' '],
#   [' ', ' ', ' ']
# ]

# board[0][0] = "X"
# board[0][1] = "0"
# board[0][2] = "X"
# board[1][0] = "0"
# board[1][1] = "X"
# board[1][2] = "0"
# board[2][0] = "X"
# board[2][1] = "X"
# board[2][2] = "0"

# p board[0]
# p board[1]
# p board[2]

# board.each do |entries|
#   entries.each do |row|
#     p row
#   end
# end

# Exercise:
# Use nested each loops (or while loops) to loop through the nested grid arrays and print out each integer on it's own line

# grid = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# grid.each do |row|
#   row.each do |item|
#     p item
#   end
# end

# i = 0

# while i < grid.length

#   j = 0
#   while j < grid[i].length
#     p grid[i][j]
#     j += 1
#   end
  
#   i += 1
# end

# Exercise:
# Task: Use the nested hash representing a student with nested information from below.
# Instructions:
# Access and print specific nested values.
# Re-assign what the name is
# delete the phone
# Add a pager number to the contact nested hash (not the overall student hash)

# student = {
#   name: "Bob",
#   grades: {
#     math: 90,
#     science: 85,
#     literature: 88
#   },
#   contact: {
#     email: "bob@example.com",
#     phone: "555-1234"
#   }
# }

# student[:name] = "Junior"
# student[:contact].delete(:phone)
# student[:contact][:pagernumber] = "456-7890"

# p student[:name]
# p student[:grades][:math]
# p student[:grades][:science]
# p student[:grades][:literature]
# p student[:contact][:email]
# p student[:contact][:phone]
# p student[:contact][:pagernumber]

# puts " ----- "
# student.each do |entry|
#   # p entry
  
#   entry.each do |item|
#     p item
#   end

# end


# Exercise:
# Use a nested each loop to print out each grade

# students = {
#   "Alice" => { math: 90, science: 95 },
#   "Bob" => { math: 85, science: 80 },
#   "Carol" => { math: 92, science: 88 }
# }

# students.each do |key, value|
#   # p key
#   # p value
#   value.each do |inner_key, inner_value|
#     # p inner_key
#     # p inner_value
#     puts "#{key} - #{inner_key}: #{inner_value}"
#   end

#   # p "---"
# end

# Exercise:
# Print out computers
# Update the price for the book to be 50
# Delete the entire coffee mug
# Add a new tag for laptop - "device"

# Bonus:
# Use an each loop to print out all the data nicely
# Example Output:

products = [
  { name: "Laptop", price: 1000, tags: ["electronics", "computers"] },
  { name: "Book", price: 20, tags: ["education", "literature"] },
  { name: "Coffee Mug", price: 10, tags: ["kitchen", "beverage"] }
]

p products[0][:tags][1]
products[1][:price] = 50
products.pop
products[0][:tags] << "device"

puts products

puts " ----- "
# p products[1]

products.each do |item|
  item.each do |key, value|
    # p key
    # p value
    puts "#{key.capitalize}: #{value}"
  end

  puts " ----- "
end

# products.each do |item|
#   item.each do |key, value|
#     if products[key][value].length > 1
#       p products[key][value].length
#     end
#     # p key
#     # p value
#     puts "#{key.capitalize}: #{value}"
#   end

#   puts " ----- "
# end

# p products[0][:tags].length