require "rspec"
require_relative "day2.rb"
require "pry"

RSpec.describe "day2B box scanning id" do 
  describe "#compare_all" do
    context "when give 'a'" do
      let(:input) {'a',}
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
end


# given the following box IDs:

# abcde 10101 3
# fghij 11011 4
# klmno 00000 0
# pqrst 00000 0
# fguij 11011 4
# axcye 10110 3
# wvxyz 00010 1

# The IDs abcde and axcye are close, but they differ by two characters (the second and fourth). However, the IDs fghij and fguij differ by exactly one character, the third (h and u). Those must be the correct boxes.

# What letters are common between the two correct box IDs? (In the example above, this is found by removing the differing character from either ID, producing fgij.)