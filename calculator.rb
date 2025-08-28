# Exercise:
# Create a new Ruby file named calculator.rb.
# Create a calculator class with an add method
# Manually test it to make sure everything is working
# Set up RSpec
# In your terminal, run gem install rspec to install rspec
# Then run rspec --init to initialize rspec in that folder
# Create the rspec tests in a file called calculator_spec.rb in the spec folder to test the add method you just created
# Run the tests by typing in rspec in your terminal
# Then create methods for subtract, multiply, and divide
# Test them manually
# Then create tests for them

class Calculator
  
  def add(a,b)
    return a + b
  end

  def subtract(a,b)
    return a - b
  end

  def multiply(a,b)
    return a * b
  end

  def divide(a,b)
    return a / b
  end
end

# calc1 = Calculator.new
# p calc1.add(5,3)