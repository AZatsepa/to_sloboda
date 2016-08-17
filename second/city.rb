class City
  @@cities = []
  attr_accessor :name, :vertex, :visited, :paths, :neighbors, :id

  def initialize name, neighbors
    @name      = name
    @vertex    = Float::INFINITY
    @visited   = false
    @neighbors = neighbors
    @paths     = {}
    @@cities.push self
    @id        = @@cities.size
  end

  def self.reset
    @@cities.each do |city|
      city.vertex  = Float::INFINITY
      city.visited = false
    end
    @@cities.sort! {|x, y| x.id <=> y.id }
  end

  def self.cities
    @@cities
  end
  
end
