# lowercase all words, and remove all punctuation except for 
# apostrophes
def clean_words(words)
  output = Array.new()

  words.each do |word|
    cleaned_word = word.downcase.gsub(/[^a-z']/, '')
    output.push(cleaned_word)
  end

  output
end

def substrings(string, dictionary)
  all_words = string.split(' ')
  
  cleaned_words = clean_words(all_words)

end

puts(substrings("hi, there! How're you doing!", []))