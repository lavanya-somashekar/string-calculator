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
  end
end