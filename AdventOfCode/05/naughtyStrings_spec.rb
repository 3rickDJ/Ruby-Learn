require './naughtyStrings.rb'

RSpec.describe NaughtyStrings do
  context "A string is nice if. It contains at least three vowels, at least one letter that appears twice in a row, does not contain the strings ab, cd, pq, or xy"do
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
  context "A string is nice if it has two letters that appear at least twice without overlaping. And one letter which repeats with exactly one letter between them" do
    it "qjhvhtzxzqqjkmpb is nice" do
      expect(NaughtyStrings.nicer?("qjhvhtzxzqqjkmpb")).to eq(true)
    end
    it "xxyxx is nice" do
      expect(NaughtyStrings.nicer?("xxyxx")).to eq(true)
    end
    it "uurcxstgmygtbstg is naughty" do
      expect(NaughtyStrings.nicer?("uurcxstgmygtbstg")).to eq(false)
    end
    it "ieodomkazucvgmuy is naughty" do
      expect(NaughtyStrings.nicer?("ieodomkazucvgmuy")).to eq (false)
    end
  end
end
