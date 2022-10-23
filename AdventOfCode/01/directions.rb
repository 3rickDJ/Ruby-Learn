class Directions
  def initialize(directions)
    @directions = directions.strip.split("")
    # p @directions
  end
  def getFloor
    floor = @directions.collect do |direction|
      direction == "(" ? 1:-1
    end
    # p floor
    floor.sum()
  end
  def getBasement
    floors = @directions.collect do |direction|
      direction == "(" ? 1:-1
    end
    floor = 0
    i = 0
    until floor == -1
      floor += floors[i]
      i += 1
    end
    i
  end
end

if __FILE__ == $0
  floor = File.read("partI.txt")
  test = Directions.new(floor)
  p test.getBasement
end
