def combine_anagrams(words)
  group_anagrams = []
  
  words_to_test = Array.new words

  words.each do |anag1|
    group = []

    words_to_test.each do |test|
      if anag1.downcase.split(//).sort.join == test.downcase.split(//).sort.join
        group << test 
      end
    end
    group_anagrams << group unless group.empty?
    
    unless group.empty?
      group.each do |to_remove|
        words_to_test.delete to_remove
      end
    end
  end
  group_anagrams
end

