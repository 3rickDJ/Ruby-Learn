class Decoder
  def initialize( table_position )
    x = table_position[0]
    y = table_position[1]
    @code = 20151125
    @Magnitude = 252533
    @Divisor = 33554393
    @position = (1.0/2.0*(x+y-2)*(x+y-1) + y).to_i
  end

  def decode
    code = @code
    (@position-1).times do
      code = code * @Magnitude
      code = code % @Divisor
    end
    code
  end
end

if __FILE__ == $0
  pos = File.read("partI.txt")
  pos = pos.split.map {|elm| elm.to_i}
  p Decoder.new(pos).decode
end
