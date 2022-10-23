require_relative "directions"
describe Directions do
  context "Given a list of instructions, determine the final position" do
    it "Expect floor 0" do
      test = Directions.new("(())")
      expect(test.getFloor).to eq (0)
    end
    it "Expect floor 3 for (((" do
      test = Directions.new("(((")
      expect(test.getFloor).to eq (3)
    end
    it "Expect floor 3 for (()(()(" do
      test = Directions.new("(()(()(")
      expect(test.getFloor).to eq (3)
    end
    it "Expect floor 3 for ))(((((" do
      test = Directions.new("))(((((")
      expect(test.getFloor).to eq (3)
    end
    it "Expect floor -1 ())" do
      test = Directions.new("())")
      expect(test.getFloor).to eq (-1)
    end
    it "Expect floor -1 ))(" do
      test = Directions.new("))(")
      expect(test.getFloor).to eq (-1)
    end
    it "Expect floor -3 )))" do
      test = Directions.new(")))")
      expect(test.getFloor).to eq (-3)
    end
    it "Expect floor -3 )())())" do
      test = Directions.new(")())())")
      expect(test.getFloor).to eq (-3)
    end

  end
end
