require_relative 'Decoder'

describe  Decoder do
  context "Given a position generate its corresponding code"do
    it "Given [1,1] as input, outputs 20151125 " do
      test = Decoder.new([1,1])
      expect(test.decode).to eq(20151125)
    end
    it "Given [1,2] as input, outputs 18749137 " do
      test = Decoder.new ([1,2])
      expect(test.decode).to eq(18749137)
    end
    it "Given [6,1] as input, outputs 33071741 " do
      test = Decoder.new ([6,1])
      expect(test.decode).to eq(33071741)
    end
  end
end
