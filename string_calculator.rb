class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers =~ /^\d+$/
  end
end