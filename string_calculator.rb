class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers =~ /^\d+$/
    if numbers.include?(',')
      nums = numbers.split(',').map(&:to_i)
      return nums.sum 
    end
  end
end