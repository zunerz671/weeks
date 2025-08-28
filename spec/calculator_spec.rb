# calculator_spec error test

require_relative '../calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 3)).to eq(5)
    end
  end

  describe '#subtract' do
    it 'returns the difference of two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(10, 3)).to eq(7)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(7,3)).to eq(21)
    end
  end

  describe '#divide' do
    it 'returns the quotient of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(21,3)).to eq(7)
    end
  end
  
end