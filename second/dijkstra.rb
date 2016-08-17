require './city.rb'
# dijkstra`s algorithm implementation
def dijkstra departure_name, final_name
  cities                = City.cities
  departure_city        = cities.find { | city | city.name == departure_name } # search object "departure_city" by name
  final_city            = cities.find { | city | city.name == final_name }     # search object "final_city" by name
  departure_city.vertex = 0 # setting value of vertex starting city
  cities.each do |city|     # iteration array of cities for search city`s neiborghs
    city.paths.each_pair do |id, cost|
      neiborgh = cities.find {|city| city.id == id} #set current neiborgh in iteration by current id
      if !neiborgh.visited? && neiborgh.vertex > city.vertex + cost # validation neiborgh of current city
        neiborgh.vertex = city.vertex + cost # set a new vertex value of neiborgh
        city.visited = true      # set new visited status of current city
      end
    end
  end
  coast = final_city.vertex # initialize variable for write result of function
  City.reset # reset values of cities array to initials
  coast # return result
end
