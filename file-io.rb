begin
  file_name = "example.txt"
  file = File.open("#{file_name}", "r")
  contents = file.read
  puts contents
rescue Errno::ENOENT
  puts "File name: '#{file_name}', not found."
ensure
  file.close if file 
end