class Main
  def self.add(input)
    numbers = input.split(/[\n,]/).map(&:to_i)
    sum = numbers.inject(0) { |total, number| total + number }
    sum
  end
end