def starts_with_a_vowel?(word)
  results = word.scan(/\A+[aeiou||AEIOU]/)  # results are ['a'] or []
  results = results[0]
  return results == 'a' || results == 'e' || results == 'i' || results == 'o' || results == 'u' || results == 'A' || results == 'E' || results == 'I' || results == 'O' || results == 'U'
end

def words_starting_with_un_and_ending_with_ing(text)
  p text
  results = text.scan(/un\w+ing/) # say what we are matching literally: "we are looking for an 'un' followed by any number of characters (the '+' says we will match whatever comes before it 1 or more times) followed by 'ing'"
  p results

end

def words_five_letters_long(text)

end

def first_word_capitalized_and_ends_with_punctuation?(text)

end

def valid_phone_number?(phone)

end
