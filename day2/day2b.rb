require "pry"

def runner(list)
  match_scores = {}
  list.each do |string|
    # puts "\n\n\tString: #{string}\n\n"
    match_scores[string]=0
    string.chars.map.with_index do |x,i|
      list.each do |other_string| 
        # binding.pry
        # puts "x: #{x}, otherstring: #{other_string}, x == other_string.chars[i]: #{x == other_string.chars[i]}"
        match_scores[string]+=1 if x == other_string.chars[i]
        # puts "match_score for #{string}: #{match_scores[string]}"
      end
    end
  end
  # p match_scores
  match_scores
end

def find_largest(list)
  array_of_scores = runner(list)
  p array_of_scores
  highest_value = array_of_scores.max_by{|k,v| v}[1]
  # p highest_value
  # p array_of_scores.select{ |k, v| v == highest_value}
end




list = ['abcde' , 'fghij', 'klmno', 'pqrst', 'fguij', 'axcye', 'wvxyz']
# list = File.readlines('day2b_input.txt')
# runner(list)
find_largest(list)