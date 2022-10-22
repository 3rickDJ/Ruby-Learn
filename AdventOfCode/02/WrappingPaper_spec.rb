require_relative 'WrappingPaper'
describe WrappingPaper do
    context "Given a set of dimentions calculate the square feet of wrapping paper" do
        it "Expect 58 square feet of paper" do
            test_58_paper = WrappingPaper.new("2x3x4")
            expect(test_58_paper.square_feet_paper).to eq (58)
        end
        it "Expect 43 square feet of paper" do
            test_43_paper = WrappingPaper.new("1x1x10")
            expect(test_43_paper.square_feet_paper).to eq (43)
        end
    end
    context "Given a set of dimentions calculate the ribbon required" do
      it "Expect 34 ribbon required" do
        test_34_ribbon = WrappingPaper.new("2x3x4")
        expect(test_34_ribbon.feet_ribbon).to eq (34)
      end
      it "Expect 14 ribbon required" do
        test_14_ribbon = WrappingPaper.new("1x1x10")
        expect(test_14_ribbon.feet_ribbon).to eq (14)
      end
    end
end
