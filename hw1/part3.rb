def combine_anagrams(words)
  group_anagrams = []
  
  words_to_test = Array.new words

  words.each do |anag1|
    group = []
    words_to_test.each do |test|

      if anag1.downcase.split(//).sort.join == test.downcase.split(//).sort.join
        puts anag1 + " and " + test + " are anagrams or equals."
        group << test
      else
#        puts anag1 + " and " + test + " are NOTHING."
      end
    end
    group_anagrams << group
    words_to_test.shift # Remove first element. No compare next element with itself
  end
  group_anagrams
end

#---------test part--------#

if __FILE__ == $0

    string_with_anagrams = ['Cars', 'FOR', 'potatoes', 'racs', 'four','scar', 'Creams', 'screaM' , 'toy' ]

    anagrams_in_group = combine_anagrams string_with_anagrams
    
    puts anagrams_in_group.inspect
end
