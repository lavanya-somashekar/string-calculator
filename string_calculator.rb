class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      custom, numbers = numbers.split("\n", 2)
      delimiter = Regexp.new(Regexp.escape(custom[2..]))
    end

    nums = numbers.split(delimiter).map(&:to_i)
    check_negatives!(nums)
    nums.sum
  end

  private

  def check_negatives!(nums)
    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
  end
end