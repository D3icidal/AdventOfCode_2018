require "rspec"
require_relative "day3.rb"
require "pry"

RSpec.describe "day3 box scanning id" do 
  describe "#calibration" do
    context "when given [+1, -1]" do
      let(:input) {[1, -1]}
      it "returns 0" do
        expect(calibration(input)).to eq 0
      end
    end
  end
end


abcdef contains no letters that appear exactly two or three times.
bababc contains two a and three b, so it counts for both.
abbcde contains two b, but no letter appears exactly three times.
abcccd contains three c, but no letter appears exactly two times.
aabcdd contains two a and two d, but it only counts once.
abcdee contains two e.
ababab contains three a and three b, but it only counts once.
Of these box IDs, four of them contain a letter which appears exactly twice, and three of them contain a letter which appears exactly three times. Multiplying these together produces a checksum of 4 * 3 = 12.