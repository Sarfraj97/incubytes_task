class Main
  def self.add(input)
    if input.start_with?('//')
      delimiter, numbers = input.split("//")[1].split(/[\n]/)            
      sum = numbers.split(delimiter).map(&:to_i).inject(0) { |total, num| total += num }
    else
      numbers = input.split(/[\n,]/).map(&:to_i)
      sum = numbers.inject(0) { |total, number| total + number }
    end
    sum
  end
end