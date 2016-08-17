require "./dijkstra.rb"

def create_map  # create map of cities with the paths between
  puts "Enter numbers of cities, please. The numbers of sities must be <= 10000"
  cities_numbers = gets.chomp.to_i
  if cities_numbers <= 10000
    cities_numbers.times { yield } # create new cities
  else
    puts "Enter right number!"
  end
end

def input
  puts "Enter the name of city."
  name = gets.chomp
  puts "Enter the number of neighbors."
  neighbors = gets.chomp.to_i
  city = City.new name, neighbors
  neighbors.times do               # set the paths to neighbors
    puts "Enter id of neighbor and cost to #{city.name} through space"
    param   = gets.chomp
    id      = param.scan(/\d+/)[0].to_i
    cost    = param.scan(/\d+/)[1].to_i
    city.paths[id] = cost
  end
end

def calculate   # enter two cities and calculate cost of transportation between
  puts "Enter names of departure city and final city through space"
  names = gets.chomp
  departure_name = names.scan(/\w+/)[0]
  final_name = names.scan(/\w+/)[1]
  puts "#{dijkstra departure_name, final_name}"
end

puts "Enter number of tests, please. The numbers of tests must be <= 10"
tests_numbers = gets.chomp.to_i
if tests_numbers <= 10
  create_map { input }
  tests_numbers.times { calculate }
else
  puts "Enter right number!"
end
puts "_________________________________________"
