def combine_anagrams(words)
  group_anagrams = []
  words.each do |anag1|

    group_anagrams << anag1

    if group_anagrams.length > 0
      group_anagrams.each do |test|
        print anag1.downcase.split(//).sort
        puts
        print test.downcase.split(//).sort
        puts

        if anag1.downcase.split(//).sort.join == test.downcase.split(//).sort.join
          puts anag1 + " and " + test + " are anagrams or equals."
        else
          puts anag1 + " and " + test + " are NOTHING."
        end
      end
    end
  end
end

#---------test part--------#

if __FILE__ == $0

    string_with_anagrams = ['Cars', 'FOR', 'potatoes', 'racs', 'four','scar', 'Creams', 'screaM']

    anagrams_in_group = combine_anagrams string_with_anagrams
    
    puts anagrams_in_group.inspect
end
