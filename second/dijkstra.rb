require './city.rb'

def dijkstra departure_name, final_name
  cities                = City.cities
  departure_city        = cities.find { | city | city.name == departure_name }
  final_city            = cities.find { | city | city.name == final_name }
  departure_city.vertex = 0
  cities.each do |city|
    city.paths.each_pair do |id, cost|
      neiborgh = cities.find {|city| city.id == id}
      if !neiborgh.visited? && neiborgh.vertex > city.vertex + cost
        neiborgh.vertex = city.vertex + cost
        city.visited = true
      end
    end
  end
  coast = final_city.vertex
  City.reset
  coast
end
