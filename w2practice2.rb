# puts "Test"

# Exercise:
# Task: Write a method called grade_students that takes an array of student scores and returns a new array of grades (A, B, C, D, F) based on the scores.
# Instructions:
# Define the grade_students method.
# Use conditionals to determine the grade.
# Part 2:
# Update your function to return whether or not the grade is an A+, A, A-, etc., not just A, B, C, D

# def grade_students(scores)
#   graded_scores = []
#   i = 0
#   scores.each do |score|
    
#     if score >=90
#       if score == 100 || score >= 97
#         score = "A+"
#         graded_scores.push(score)
#         i += 1
#       elsif score < 97 && score > 94
#         score = "A"
#         graded_scores.push(score)
#         i += 1
#       else
#         score = "A-"
#         graded_scores.push(score)
#         i += 1
#       end
#     elsif score >= 80
#       if score < 90 && score >= 87
#         score = "B+"
#         graded_scores.push(score) 
#         i += 1
#       elsif score < 87 && score > 84
#         score = "B"
#         graded_scores.push(score)
#         i += 1
#       else
#         score = "B-"
#         graded_scores.push(score)
#         i += 1
#       end
#     elsif score >= 70
#       if score < 80 && score >= 77
#         score = "C+"
#         graded_scores.insert(i, score) 
#         i += 1
#       elsif score < 77 && score > 74
#         score = "C"
#         graded_scores.insert(i, score) 
#         i += 1
#       else
#         score = "C-"
#         graded_scores.insert(i, score) 
#         i += 1
#       end
#     elsif score >= 60
#       if score < 70 && score >= 67
#         score = "D+"
#         graded_scores << score
#         i += 1
#       elsif score < 67 && score > 64
#         score = "D"
#         graded_scores << score
#         i += 1
#       else 
#         score = "D-"
#         graded_scores << score
#         i += 1
#       end
#     else 
#       score = "F"
#       graded_scores << score 
#       i += 1
#     end
#   end

#   return graded_scores

# end

# student_scores = [100, 98, 95, 92, 89, 85, 83, 79, 75, 70, 69, 65, 61, 55]

# grades = grade_students(student_scores)

# # p grade_students(student_scores)

# match = 0
# matched_scores =[]

# while match < student_scores.length
#   # puts "#{student_scores[match]} : #{grade_students(student_scores)[match]}" 
#   matched_scores << [student_scores[match], grade_students(student_scores)[match]]
#   match += 1
# end

# p matched_scores

# Exercise:
# Task: Create a hash representing yourself with keys for "name", "age", and "hobby".
# Instructions:
# Define the hash and access each value.
# Print out a sentence with all your attributes from the hash

# me = {
#   name: "Junior",
#   age: "47",
#   hobby: "parenting"
# }

# p me
# p me[:age]
# p me[:hobby]

# Exercise:
# Task: Modify your person hash:
# Add a new key-value pair for :favorite_food.
# Update your :hobby.
# Remove the :age key.

# me[:favorite_food] = "Estufao"
# me[:hobby] = "coaching"
# me.delete(:age)

# p me

# puts "Hello, my name is #{me[:name]}. I am #{me[:age]} years old. I like  #{me[:hobby]} my kids."

# x = gets.chomp.to_s
# y = gets.chomp.to_s

# test = {
#   x: y
# }

# puts test

# Bonus:
# Create nested each loops to loop through and print out each key value pair in the people array below

# --------

people = [
  { name: "Alice", age: 30, city: "New York" },
  { name: "Bob", age: 25, city: "Los Angeles" },
  { name: "Carol", age: 27, city: "Chicago" }
]

people.each do |entries|
  entries.each do |key, value|
    puts "#{key.capitalize}: #{value}"
    
    # p key
    # p value1
    # p value2
  end

  puts "---"
end

# ----------

# Exercise:
# Task: Write a program that iterates over your person hash and prints each key and value nicely formatted.

# me = {
#   name: "Junior",
#   age: "47",
#   hobby: "parenting"
# }

# me.each do |key, value|
#   puts "#{key}: #{value}"
# end