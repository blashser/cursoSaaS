def combine_anagrams(words)
  words
end

#---------test part--------#

if __FILE__ == $0

    string_with_anagrams = ['Cars', 'FOR', 'potatoes', 'racs', 'four','scar', 'Creams', 'screaM']

    anagrams_in_group = combine_anagrams string_with_anagrams
    
    puts anagrams_in_group.inspect
end
