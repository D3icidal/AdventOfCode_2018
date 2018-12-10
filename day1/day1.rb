def calibration(adjustments)
  frequancy = 0
  adjustments.each do |adjustment|
    frequancy += adjustor(adjustment)
    frequancy
  end
  puts frequancy
end

def adjustor(adjustment)
  adjustment
end


file = File.open("day1_input.txt")

adjustments = File.readlines(file).map(&:chomp).map(&:to_i)

# adjustments = [+1,-2,3,1]

calibration(adjustments)