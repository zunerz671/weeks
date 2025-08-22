names = ["Matt", "Junior", "Adrian", "Ron", "Kiko"]

def print_lowercase(words)

  new_array = []

  words.each do |word|
    # p word.downcase
    new_array.push(word.downcase)
  end

  return new_array
end

p print_lowercase(names)

puts "----"

numbers = [1, 2, 3, 4, 5, 5]

def sum_array(nums)

  total = 0
  nums.each do |num|
    total += num
  end

  return total
end

p sum_array(numbers)

puts "----"

names = ["Matt", "Junior", "Adrian", "Ron", "Kiko"]

def reverse_words(words)
  # p words

  new_array = []

  words.each do |word|
    # p word.reverse
    # new_array.push(word.reverse)
    new_array << word.reverse
  end

  return new_array
end

p reverse_words(names)

puts "----"

numbers = [1, 2, 3, 4, 5]

def product_array(nums)

  total = 1

  # p nums
  nums.each do |num|
    total *= num
  end

  return total
end

p product_array(numbers)