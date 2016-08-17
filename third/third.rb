def factorial(number)
  result = 1
  (0...number).to_a.each do |item|
    result += (result *= item)
  end
  result
end

def sum_digits(factorial)
  sum = 0
  string = factorial.to_s.delete "0"
  string.each_char do |chr|
    sum += chr.to_i
  end
  sum
end

puts sum_digits(factorial 100)
