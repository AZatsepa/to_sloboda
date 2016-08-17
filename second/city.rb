class City
  @@cities = []
  attr_accessor :visited, :paths, :name, :neighbors, :id, :vertex

  def initialize name, neighbors
    @vertex    = Float::INFINITY
    @name      = name
    @neighbors = neighbors
    @paths     = {}
    @@cities.push self
    @id        = @@cities.size
    @visited   = false
  end

  def visited?
    @visited == true ? true : false
  end

  def self.reset
    @@cities.each do |city|
      city.vertex  = Float::INFINITY
      city.visited = false
    end
  end

  def self.cities
    @@cities
  end

end
