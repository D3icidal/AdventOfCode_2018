require "rspec"
require_relative "day2.rb"
require "pry"

RSpec.describe "day2 calibration" do 
  describe "#calibration" do
    context "when given [+1, -1]" do
      let(:input) {[1, -1]}
      it "returns 0" do
        expect(calibration(input)).to eq 0
      end
    end
    context "when given [4,-2,-1]" do
      let(:input) {[4,-2,-1]}
      it "returns 1" do
        expect(calibration(input)).to eq 1
      end
    end
  end

  describe "#dupFinder" do
    context " when given [+1, -1]" do
      let(:input) {[+1, -1]}
      it "returns 0" do
        expect(dupFinder(input)).to eq 0
      end
    end

    context "when given [+3, +3, +4, -2, -4]" do
      let(:input) {[+3, +3, +4, -2, -4]}
      it "returns 10" do
        expect(dupFinder(input)).to eq 10
      end
    end

    context "when given [-6, +3, +8, +5, -6]" do
      let(:input) {[-6, +3, +8, +5, -6]}
      it "returns 5" do
        expect(dupFinder(input)).to eq 5
      end
    end

    context "when given [+7, +7, -2, -7, -4]" do
      let(:input) {[+7, +7, -2, -7, -4]}
      it "returns 14" do
        expect(dupFinder(input)).to eq 14
      end
    end

    context "when given the full input" do
      let(:input) {File.readlines('day2_input.txt').map(&:chomp).map(&:to_i)}
      it "returns the god damn answer" do
        expect(dupFinder(input)).to eq 1
      end
    end
  end
end