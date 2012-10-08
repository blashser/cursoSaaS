# -*- coding: utf-8 -*-
#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  # YOUR CODE HERE
end

def count_words(str)
  # YOUR CODE HERE
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file

palin = [ "Dábale arroz a la zorra el abad.",
          "¿Acaso hubo búhos acá?",
          "No lata, no: la totalidad arada dilato talón a talón.",
          "A man, a plan, a canal: Panama!",
          "Madam, in Eden I'm Adam" ]

no_palin = [ "there goes the neighborhood" ]

test_string = palin + no_palin

test_string.each do |str|
  if palindrome? str
    puts str + " is a palindrome!"
  else
    puts str + " is NOT a palindrome!"
  end
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"

word_count = count_words test_str
puts word_count
