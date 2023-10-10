# Method: substrings
#   Arguments: string, dictionary
#   Dictionary: a pre-defined array of words
#   Return: a hash which counts how many times each dictionary word was found
#     (Key: word. Value: count)
# Example:
#   dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

# Pseudocode:
# Create hash (substrings) with default value of 0
# For each word in dictionary:
#   Search string for matches (case insensitive).
#   For each match:
#     Increment the value for the hash's key corresponding to that word
# Return the hash


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  word_counts = Hash.new(0)
  dictionary.each do |word|
    count = string.downcase.gsub(word).count
    word_counts[word] = count unless count == 0
  end
  word_counts
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
