require './naughtyStrings.rb'

RSpec.describe NaughtyStrings do
  context "Given a string, determine wheather it is nice or naughty"do
    it"jchzalrnumimnmhp is naughty (no double letter)"do
      expect(NaughtyStrings.nice?("jchzalrnumimnmhp")).to eq(false)
    end
    it"haegwjzuvuyypxyu is naughty (contains xy)"do
      expect(NaughtyStrings.nice?("haegwjzuvuyypxyu")).to eq(false)
    end
    it"dvszwmarrgswjxmb is naughty (contains only one vowel)"do
      expect(NaughtyStrings.nice?("dvszwmarrgswjxmb")).to eq(false)
    end
    it"ugknbfddgicrmopn is nice"do
      expect(NaughtyStrings.nice?("ugknbfddgicrmopn")).to eq(true)
    end
    it"aaa is nice"do
      expect(NaughtyStrings.nice?("aaa")).to eq(true)
    end
  end
end
