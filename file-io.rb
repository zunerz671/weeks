# begin
#   file_name = "example.txt"
#   file = File.open("#{file_name}", "r")
#   contents = file.read
#   puts contents
# rescue Errno::ENOENT
#   puts "File name: '#{file_name}', not found."
# ensure
#   file.close if file 
# end

# -------

# Exercise:
# Task: Write user input to a file.
# Instructions:
# Prompt the user for their name and a message.
# Write this information to a file named user_messages.txt (do not create this file manually).
# Ensure proper error handling and closing of the file.
# Test it out and see how it created a new file named user_messages.txt with that message.
# Test it out again and see how it deletes everything in user_messages.txt and adds the new message.
# Now that you’ve seen that ‘w’ overwrites everything, now change ‘w’ to ‘a’ for append and test it again to see how it appends to the end of the file rather than overwriting it.
# Test it multiple times to see how it continues to add to the file rather than delete everything.

# puts "Select w, r, or a"
# selection = gets.chomp

# puts "Please provide your name:"
# name = gets.chomp

# puts "Please provide a message:"
# message = gets.chomp

# begin
#   file = File.open("user_messages.txt", "#{selection}")
#   file.puts "Your name: #{name}."
#   file.puts "Your message: #{message}."

#   puts "Info input was successful."
# rescue
#   puts "An error occured"

# ensure
#   file.close if file

# end

# ----------

# Exercise:
# Task: Count the number of lines in a file.
# Instructions:
# Read a file and count the number of lines.
# Display the total line count.
# Include error handling for file not found.

# ----
# Bonus:
# Add a condition in the each_line loop to only count lines that include puts
# Hint - use the .includes?() method

# begin
#   file = File.open("w4practice.rb", "r")
  
#   i = 0
#   file.each_line do |line|
#     i += 1
#     # puts "Read line #{i}: #{line}"
#     if line.include?("puts")
#       puts "line #{i} contains a puts: #{line}"
#     end
#   end
  
#   puts "Total lines of code: #{i}"
# rescue Errno::ENOENT
#   puts "File does not exist"
  
# ensure
#   file.close if file

# end

# ---------------

# Exercise:
# Task: Save an array of hashes to a file in JSON format.
# Instructions:
# Define an array of hashes representing contacts.
# Write the array to a file named contacts.json in JSON format.
# Ensure proper error handling.

require 'json'

contacts = [
  {name: "Junior", village: "Yigo", age: 47},
  {name: "Guafi", village: "Yigo", age: 10},
  {name: "Neng", village: "Yigo", age: 6}
]

begin
  file = File.open("contacts.json", "w")
  file.write(JSON.pretty_generate(contacts))
  puts "Data saved in contacts.json"

rescue
  puts "An error occured"

ensure
  file.close if file

end
