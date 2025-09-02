# Exercise:
# Setup rspec (if it's not setup in this folder already - you'll know if it is if your folder has a spec folder)
# To set it up run - rspec --init
# All your tests will go iniside the /spec folder
# Write rspec tests for your Car class (in a file called car_spec.rb in the /spec folder)
# Write rspec tests for you Book class (in a file called book_spec.rb in the /spec folder)

require_relative '../w4practice'

RSpec.describe Book do
  describe '#initialize' do
    it 'Creates a new book with title, author, and pages.' do
      book = Book.new("Harry Potter", "JK", 1000)
      expect(car.make).to eq("Harry Potter")
      expect(car.model).to eq("JK")
      expect(car.year).to eq(1000)
    end
  end
end