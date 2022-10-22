class WrappingPaper
    def initialize(dimentions)
      @dimentions = dimentions.split("x").collect do |dim|
        dim.to_i
      end
      @min = @dimentions.sort[0..1]
    end
    def square_feet_paper
      x = @dimentions[0]
      y = @dimentions[1]
      z = @dimentions[2]
      sqr_paper = 2*x*y + 2*x*z + 2*y*z
      sqr_paper =  sqr_paper + @min[0]*@min[1]
    end
end

if __FILE__ == $0
  paper = WrappingPaper.new("2x3x4")
  puts paper.square_feet_paper
end
