require './lighting'
describe Lighting do
  context "turn lights on and off in a 1000x1000 grid" do
    # it "turn on 0,0 through 999,999" do
    #   lights = Lighting.new
    #   lights.turn("turn on 0,0 through 999,999")
    #   expect(lights.turnedOn).to eq(1000000)
    # end
    it "leave 1000 lights on" do
      lights = Lighting.new
      lights.turn("toggle 0,0 through 999,0")
      expect(lights.turnedOn).to eq(1000)
    end
    it "leave 0 lights on" do
      lights = Lighting.new
      lights.turn("turn off 499,499 through 500,500")
      expect(lights.turnedOn).to eq(0)
    end
    it "leave 4 lights on" do
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
  context "change brightness of lights by +1, -1 or +2, minimun 0" do
    it "total brightness 1"do
      lights = Lighting.new
      lights.change_brightness("turn on 0,0 through 0,0")
      expect(lights.total_brightness).to eq(1)
    end
    it "total brightness 2000000"do
      lights = Lighting.new
      lights.change_brightness("toggle 0,0 through 999,999")
      expect(lights.total_brightness).to eq(2000000)
    end
    it "total brightness 0"do
      lights = Lighting.new
      lights.change_brightness("turn off 0,0 through 4,2")
      expect(lights.total_brightness).to eq(0)
    end
  end
end
