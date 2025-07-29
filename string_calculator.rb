class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers =~ /^\d+$/
    if numbers.include?(',')
      nums = numbers.split(',').map(&:to_i)
      return nums[0] + nums[1]
    end
  end
end
