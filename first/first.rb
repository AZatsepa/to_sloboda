def factorial(number)
  result = 1
  (0...number).to_a.each do |item|
    result += (result *= item)
  end
  result
end

def catalan number
  cat_num = (factorial (number * 2)) / ((factorial number) * (factorial (number + 1)))
end

puts "Enter your number, please."
var = gets.chomp.to_i
puts "number of your bracket sequence is #{catalan var}"
