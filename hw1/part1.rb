# -*- coding: utf-8 -*-
#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.

def variations_a_es( str )
  str = str.gsub( /á/, "a" )
  str = str.gsub( /à/, "a" )
  str = str.gsub( /ä/, "a" )
  str = str.gsub( /Á/, "a" )
  str = str.gsub( /À/, "a" )
  str = str.gsub( /Ä/, "a" )
end

def variations_e_es( str )
  str = str.gsub( /é/, "e" )
  str = str.gsub( /è/, "e" )
  str = str.gsub( /ë/, "e" )
  str = str.gsub( /É/, "e" )
  str = str.gsub( /È/, "e" )
  str = str.gsub( /Ë/, "e" )
end

def variations_i_es( str )
  str = str.gsub( /í/, "i" )
  str = str.gsub( /ì/, "i" )
  str = str.gsub( /ï/, "i" )
  str = str.gsub( /Í/, "i" )
  str = str.gsub( /Ì/, "i" )
  str = str.gsub( /Ï/, "i" )
end

def variations_o_es( str )
  str = str.gsub( /ó/, "o" )
  str = str.gsub( /ò/, "o" )
  str = str.gsub( /ö/, "o" )
  str = str.gsub( /Ó/, "o" )
  str = str.gsub( /Ò/, "o" )
  str = str.gsub( /Ö/, "o" )
end

def variations_u_es( str )
  str = str.gsub( /ú/, "u" )
  str = str.gsub( /ù/, "u" )
  str = str.gsub( /ü/, "u" )
  str = str.gsub( /Ú/, "u" )
  str = str.gsub( /Ù/, "u" )
  str = str.gsub( /Ü/, "u" )
end

def palindrome?(str)

# I do not know why this does not work
#  str = str.gsub( /[áàäÁÀÄ]/, "a" ) #remove variations a-es
#  str = str.gsub( /[éèëÉÈË]/, "e" ) #remove variations e-es
#  str = str.gsub( /[íìïÍÌÏ]/, "i" ) #remove variations i-es
#  str = str.gsub( /[óòöÓÒÖ]/, "o" ) #remove variations o-es
#  str = str.gsub( /[úùüÚÙÜ]/, "u" ) #remove variations u-es

  str = variations_a_es str #remove variations a-es
  str = variations_e_es str #remove variations e-es
  str = variations_i_es str #remove variations i-es
  str = variations_o_es str #remove variations o-es
  str = variations_u_es str #remove variations u-es

  str = str.gsub( /[\W_0-9]/, "" )
  
  if 0 == str.casecmp( str.reverse )
    true
  else
    false
  end
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
