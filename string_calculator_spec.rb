require_relative 'string_calculator'

describe StringCalculator do
  describe '#add' do
    let(:calc) { StringCalculator.new }

    it 'returns 0 for an empty string' do
      expect(calc.add('')).to eq(0)
    end
  end
end