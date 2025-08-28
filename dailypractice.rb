# --- Warm-up: print 1..10 with while ---
# Expected output:
# 1
# 2
# ...
# 10

# i = 1

# while i <= 10
#   puts i
#   i += 1
# end

# --- Main: sum 1..100 with a loop (while version first) ---
# Expected output:
# 5050

# i = 1
# sum = 0

# while i <= 100
#   sum += i

#   i += 1
# end

# puts sum

# --- Stretch: countdown 10..0 then "Liftoff!" ---
# Expected output:
# 10
# 9
# ...
# 0
# Liftoff!

# count_start = 10

# while count_start >= 0
#   puts count_start

#   count_start -= 1
# end

# puts "Liftoff!"

# e = 5.times
# p e

# =========================================================
# Aug 27 — Ruby Drills WITH EXAMPLES
# Read the example, then do the exercise below it.
# =========================================================

puts "\n=== Part 1: Warm-up (print 1..5 three ways) ==="

# EXAMPLE: while loop pattern (prints 1..3)
# i = 1
# while i <= 3
#   puts i
#   i += 1
# end

# 1) Using while — print 1..5
# Expected: 1 2 3 4 5 (each on its own line)
# --------------------------------------------

# i = 1

# while i <= 5
#   puts i
#   i += 1
# end


# EXAMPLE: upto with a block (prints 1..3)
# 1.upto(3) { |n| puts n }

# 2) Using 1.upto(5) with a block — print 1..5
# --------------------------------------------

# 1.upto(5) { |n| puts n }


# EXAMPLE: range + to_a + each (prints 1..3)
# (1..3).to_a.each { |n| puts n }

# 3) Using (1..5).to_a and .each — print 1..5
# --------------------------------------------

# (1..5).to_a.each { |n| puts n}

# array = (1..5).to_a


puts "\n=== Part 2: Block Practice ==="

# EXAMPLE: map transforms each element (square 1..3)
# squares_small = (1..3).map { |n| n * n }
# puts squares_small.inspect  # => [1, 4, 9]

# 1) Squares of 1..10 using .map
# Expected: [1, 4, 9, ..., 100]
# --------------------------------

# result = (1..10).map { |n| n * n }
# p result.inspect


# EXAMPLE: select filters elements (evens 1..10)
# evens_small = (1..10).select { |n| n.even? }
# puts evens_small.inspect  # => [2, 4, 6, 8, 10]

# 2) Evens from 1..20 using .select
# Expected: [2, 4, 6, ..., 20]
# --------------------------------

# result = (1..20).select { |n| n.even? }
# puts result.inspect
# p result

# EXAMPLE: inject reduces to one value (product 1..3)
# prod_small = (1..3).inject(1) { |acc, n| acc * n }
# puts prod_small  # => 6

# 3) Product of 1..5 using .inject
# Expected: 120
# --------------------------------

# result = (1..5).inject(1) { |acc, n| acc * n }
# puts result


puts "\n=== Part 3: Stretch ==="

# EXAMPLE: downto with a block (countdown 3..0)
# 3.downto(0) { |i| puts i }

# 1) Countdown 10..0 using downto with a block
# ---------------------------------------------

# 10.downto(0) { |n| puts n}


# EXAMPLE: enumerator -> to_a -> map
# arr_small = 3.downto(0).to_a      # => [3,2,1,0]
# doubled  = arr_small.map { |i| i * 2 }
# puts doubled.inspect              # => [6,4,2,0]

# 2) Make an array from 10..0 using downto.to_a, then map to double each number
# Expected: [20, 18, 16, ..., 0]
# ---------------------------------------------

# arr = 10.downto(0).to_a
# doubled = arr.map { |n| 2 * n }
# puts doubled.inspect


# EXAMPLE: writing a method that yields to a block
# def demo_each(arr)
#   idx = 0
#   while idx < arr.length
#     yield arr[idx]        # call the passed-in block with the element
#     idx += 1
#   end
#   arr                     # common convention: return the original collection
# end
# demo_each([:a, :b, :c]) { |x| puts x }  # prints a b c on separate lines

# 3) Implement my_each(arr) that yields each element to a given block
# Expected usage:
#   my_each([1,2,3]) { |n| puts n }
# Output:
#   1
#   2
#   3
# ---------------------------------------------
def my_each(arr)
  # your code here (hint: while idx < arr.length; yield arr[idx])
end

# Demo call (uncomment to test)
# my_each([1,2,3]) { |n| puts n }



# ================= Quick Cheat Sheet =================
# Block forms:
#   { |x| ... }           # one-line
#   do |x|                # multi-line
#     ...
#   end
#
# Common iterators:
#   n.times { |i| ... }
#   a.upto(b) { |n| ... }
#   a.downto(b) { |n| ... }
#   array.each { |x| ... }
#   array.map { |x| transform }
#   array.select { |x| keep? }
#   array.inject(init) { |acc, x| combine }
# =====================================================
