require 'set'
class Lighting
  def initialize
    @grid = Set[]
  end
  def turn(text)
    coordinates = (text.scan /\d?\d?\d/).collect {|elm| elm.to_i}
    coordinates = [[coordinates[0],coordinates[1]],[coordinates[2],coordinates[3]]]
    lights = range(coordinates)
    case text
      when /toggle/
        @grid = @grid ^ lights
      when /on/
        @grid = @grid | lights
      when /off/
        @grid = @grid - lights
    end
  end

  def range(coordinates)
    bottomL, upperR = coordinates[0],coordinates[1]
    x1,y1 = bottomL[0],bottomL[1]
    x2,y2 = upperR[0], upperR[1]
    lights = Set[]
    (x1..x2).each do |column|
      (y1..y2).each do |row|
        lights.add ([column, row])
      end
    end
    lights.to_set
  end
  def turnedOn
    @grid.size
  end
end

if __FILE__ == $0
  lights = Lighting.new
  instructions = File.readlines("puzzleInput")
  instructions.each do |instruction|
    lights.turn(instruction)
  end
  p lights.turnedOn
end
