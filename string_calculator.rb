class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    delimiter = /,|\n/
    str = numbers
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      custom = parts[0][2..-1]
      delimiter = Regexp.escape(custom)
      str = parts[1]
    end
    nums = str.split(/#{delimiter}|\n/).map(&:to_i)
    negatives = nums.select { |n| n < 0 }
    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end
    nums.sum
  end
end