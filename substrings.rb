def substrings(string, dictionary)
  word_counts = Hash.new(0)
  dictionary.each do |word|
    count = string.downcase.gsub(word.downcase).count
    word_counts[word] = count unless count == 0
  end
  word_counts
end

sample_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sample_string = "Howdy partner, sit down! How's it going?"

# Test
p substrings(sample_string, sample_dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
