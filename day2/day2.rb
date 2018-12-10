def uniq_array(string)
  return string.split("").uniq.sort
end

def dos?(string)
  return false if uniq_array(string).length == string.length
  uniq_array(string).each do |letter|
    # binding.pry
    return true if string.count(letter) == 2
  end
  return false
end

def tres?(string)
  return false if uniq_array(string).length == string.length
  uniq_array(string).each do |letter|
    # binding.pry
    return true if string.count(letter) == 3
  end
  return false
end

def count_dos(input)
  count = 0
  input.each do |id|
    count+=1 if dos?(id)
  end
  count
end

def count_tres(input)
  count=0
  input.each do |id|
    count+=1 if tres?(id)
  end
  count
end

def checksum(input)
  count_dos(input) * count_tres(input)
end
