require './lighting'
describe Lighting do
  context "turn lights on and off in a 1000x1000 grid" do
    # it "turn on 0,0 through 999,999" do
    #   lights = Lighting.new
    #   lights.turn("turn on 0,0 through 999,999")
    #   expect(lights.turnedOn).to eq(1000000)
    # end
    it "toggle 0,0 through 999,0" do
      lights = Lighting.new
      lights.turn("toggle 0,0 through 999,0")
      expect(lights.turnedOn).to eq(1000)
    end
    it "turn off 499,499 through 500,500" do
      lights = Lighting.new
      lights.turn("turn off 499,499 through 500,500")
      expect(lights.turnedOn).to eq(0)
    end
    it "leave 10 lights on" do
      lights = Lighting.new
      #25 on
      lights.turn("turn on 0,0 through 4,4")
      #4 off
      lights.turn("turn off 1,1 through 2,2")
      #toggle => 4 on
      lights.turn("toggle 0,0 through 4,4")
      expect(lights.turnedOn).to eq(4)
    end
    it "leave 14 lights on" do
      lights = Lighting.new
      lights.turn("turn on 1,1 through 3,3")
      lights.turn("turn off 2,2 through 2,2")
      lights.turn("toggle 2,2 through 5,4")
      expect(lights.turnedOn).to eq(14)
    end
  end
end
