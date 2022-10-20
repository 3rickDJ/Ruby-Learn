require 'coordinates'
RSpec.describe Coordinates "#score" do
    context "with no strikes or spares" do
        it "sums the pin count for each roll" do
            test = Coordinates.new("^v^v^v^v^v", [[0,0]])
            expect(test.recorrido).to eq "44"
        end
    end
end