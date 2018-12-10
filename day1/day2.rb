def calibration(adjustments, freq = 0)
  # binding.pry
  adjustments.each do |adjustment|
    freq += adjustment
  end
  freq
  # binding.pry
end


def dupFinder(adjustments)
  freq=0
  freq_history=[0]
  until freq_history[1..-2].include?(freq)
    adjustments.each do |adjustment|
      freq += adjustment
      if freq_history.include?(freq)
        return freq
      else
        freq_history << freq
      end
    end
  end
  freq 
end

