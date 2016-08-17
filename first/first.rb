def factorial(number)
  result = 1
  (0...number).to_a.each do |item|
    result += (result *= item)
  end
  result
end

def catalan number
  # return 1 if number < 2
  # s += Data[k] * Data[n - 1 - k]
  # cat_num = catalan(0)*catalan(number - 1 - 0)
  # (2n)!/n!(n+1)!
  cat_num = (factorial (number * 2)) / ((factorial number) * (factorial (number + 1)))
end

puts "Enter your number, please."
var = gets.chomp.to_i
puts "number of your bracket sequences is #{catalan var}"
