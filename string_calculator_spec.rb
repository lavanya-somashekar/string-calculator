require_relative 'string_calculator'

describe StringCalculator do
  describe '#add' do
    let(:calc) { StringCalculator.new }

    it 'returns 0 for an empty string' do
      expect(calc.add('')).to eq(0)
    end

    it 'returns the number for a single number string' do
      expect(calc.add('1')).to eq(1)
      expect(calc.add('42')).to eq(42)
    end

    it 'returns the sum for two numbers separated by comma' do
      expect(calc.add('1,5')).to eq(6)
      expect(calc.add('10,20')).to eq(30)
    end

    it 'returns the sum for multiple numbers separated by comma' do
      expect(calc.add('1,2,3,4')).to eq(10)
      expect(calc.add('10,20,30')).to eq(60)
    end

    it 'handles new lines between numbers' do
      expect(calc.add("1\n2,3")).to eq(6)
      expect(calc.add("4,5\n6")).to eq(15)
    end

    it 'supports custom delimiters' do
      expect(calc.add("//;\n1;2")).to eq(3)
      expect(calc.add("//|\n4|5|6")).to eq(15)
    end

    it 'raises an exception for negative numbers' do
      expect { calc.add('1,-2,3') }.to raise_error("negative numbers not allowed -2")
      expect { calc.add('1,-2,-5') }.to raise_error("negative numbers not allowed -2,-5")
      expect { calc.add("//;\n-1;2;-3") }.to raise_error("negative numbers not allowed -1,-3")
    end
  end
end