class Main
  def self.add(input)
    if input.start_with?('//')
      delimiter, numbers = input.split("//")[1].split(/[\n]/)
      numbers = numbers.split(delimiter).map(&:to_i)
      check_negative_number(numbers)      
    else
      numbers = input.split(/[\n,]/).map(&:to_i)
      check_negative_number(numbers)
    end
    total(numbers)
  end

  def self.check_negative_number(numbers)
    negative_numbers = numbers.select { |num| num < 0 }
    raise StandardError, "Negative numbers not allowed: #{negative_numbers.join(',')}" unless negative_numbers.empty?
  end

  def self.total(numbers)
    numbers.inject(0) { |total, num| total += num }
  end
end