årequire "rspec"
require_relative "day2.rb"
require "pry"

RSpec.describe "day2 box scanning id" do 
  describe "#uniq_array" do
    context "when give 'aabbc'" do
      let(:input) {'aabbc'}
      it "returns ['a','b','c']" do
        expect(uniq_array('aabbc')).to eq ['a','b','c']
      end
    end
    context "when give 'daabbc'" do
      let(:input) {'daabbc'}
      it "returns ['a','b','c','d']" do
        expect(uniq_array('daabbc')).to eq ['a','b','c','d']
      end
    end
  end

  describe "#dos?" do
    context "when given 'abcdef'" do
      let(:input) {'abcdef'}
      it "returns false" do
        expect(dos?(input)).to eq false
      end
    end

    context "when given 'bababc'" do
      let(:input) {'bababc'}
      it "returns true" do
        expect(dos?(input)).to eq true
      end
    end
    context "when given 'abbcde'" do
      let(:input) {'abbcde'}
      it "returns true" do
        expect(dos?(input)).to eq true
      end
    end
  end

  describe "#tres?" do
    context "when given 'abcdef'" do
      let(:input) {'abcdef'}
      it "returns false" do
        expect(tres?(input)).to eq false
      end
    end

    context "when given 'bababc'" do
      let(:input) {'bababc'}
      it "returns true" do
        expect(tres?(input)).to eq true
      end
    end
    context "when given 'abbcde'" do
      let(:input) {'abbcde'}
      it "returns false" do
        expect(tres?(input)).to eq false
      end
    end
  end

  describe "#checksum" do
    context "when given 'file'" do
      let(:input) {File.readlines('day2_input.txt')}
      it "returns 12" do
        expect(checksum(input)).to eq 12
      end
    end
  end
end


# abcdef contains no letters that appear exactly two or three times.
# bababc contains two a and three b, so it counts for both.
# abbcde contains two b, but no letter appears exactly three times.
# abcccd contains three c, but no letter appears exactly two times.
# aabcdd contains two a and two d, but it only counts once.
# abcdee contains two e.
# ababab contains three a and three b, but it only counts once.
# Of these box IDs, four of them contain a letter which appears exactly twice, and three of them contain a letter which appears exactly three times. Multiplying these together produces a checksum of 4 * 3 = 12.