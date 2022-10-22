require_relative 'WrappingPaper'
describe WrappingPaper do
    context "Given a set of dimentions calculate the suare feet of wrapping paper" do
        it "Expect 58 square feet of paper" do
            test_58_paper = WrappingPaper.new("2x3x4")
            expect(test_58_paper.square_feet_paper).to eq (58)
        end
        it "Expect 43 square feet of paper" do
            test_43_paper = WrappingPaper.new("1x1x10")
            expect(test_43_paper.square_feet_paper).to eq (43)
        end
        # it "Expect 43 square feet of paper" do
        #   test_43_paper = WrappingPaper.new(["1x1x10"])
        #   expect(test_43_paper.square_feet_paper).to eq (43)
        # end
    end
end
