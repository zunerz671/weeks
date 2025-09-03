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

begin
  file = File.open("w4practice.rb", "r")
  
  file.each_line do |line|
    puts "Read line: #{line}"
  end
rescue Errno::ENOENT
  puts "File does not exist"
ensure
  file.close if file
end