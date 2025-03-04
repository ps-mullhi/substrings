# lowercase all words, and remove all punctuation except for 
# apostrophes.
def clean_words(words)
  output = Array.new()

  words.each do |word|
    cleaned_word = word.downcase.gsub(/[^a-z']/, '')
    output.push(cleaned_word)
  end

  output
end

def all_substrings_of_word(word)
  output = Array.new()

  (0...word.length).each do |i|
    (i...word.length).each do |j|
      output << word[i..j]
    end
  end

  output
end

def substrings(string, dictionary)
  all_words = string.split(' ')
  cleaned_words = clean_words(all_words)

  output = Hash.new
  cleaned_words.each do |word|
    substrings = all_substrings_of_word(word)

    substrings.each do |substring|
      if dictionary.include?(substring)
        current_count = output.dig(substring)
        unless count # meaning, if count=nil in this case
          current_count = 0
        end
        output[substring] = current_count + 1
      end
    end
  end

  output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("below", dictionary))
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))