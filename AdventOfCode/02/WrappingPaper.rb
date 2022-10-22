class WrappingPaper
    # attr_writer :dimentions
    # attr_reader :dimentions
    def initialize(dimentions)
      @dimentions = dimentions.split("x").collect do |dim|
        dim.to_i
      end
      @min = @dimentions.sort[0..1]
    end
    def dimentions=(newDimention)
      @dimentions = newDimention.split("x").collect do |dim|
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
  dimentions = File.readlines("partI.txt").collect do |line|
    line.gsub(/\s/,"")
  end
  paper = WrappingPaper.new("0x0x0")
  paper = dimentions.collect do |dimention|
    paper.dimentions = dimention
    paper.square_feet_paper
  end
  puts paper.sum
  # puts paper.dimentions
  # puts paper.square_feet_paper
end
