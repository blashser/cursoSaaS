def combine_anagrams(words)
  group_anagrams = []
  
  words_to_test = Array.new words

  words.each do |anag1|
    group = []
    unless group_anagrams.flatten.include? anag1
      words_to_test.each do |test|
        puts "Comparing " + anag1 + " and " + test
        if anag1.downcase.split(//).sort.join == test.downcase.split(//).sort.join
          puts anag1 + " and " + test + " are anagrams or equals."
          group << test 
        else
          # puts anag1 + " and " + test + " are NOTHING."
        end
      end
      puts group_anagrams.flatten.inspect
      puts group.flatten.at( 0 )

      group_anagrams << group unless group.empty?

      unless group.empty?
        group.each do |to_remove|
          words_to_test.delete to_remove
        end
      end
    end
  end
  group_anagrams
end

#---------test part--------#

if __FILE__ == $0

    string_with_anagrams = ['Cars', 'FOR', 'potatoes', 'racs', 'four','scar', 'Creams', 'screaM' , 'toy' ]

    anagrams_in_group = combine_anagrams string_with_anagrams
    
    puts anagrams_in_group.inspect
end
