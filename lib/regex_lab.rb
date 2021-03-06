def starts_with_a_vowel?(word)
  results = word.scan(/\A+[aeiou||AEIOU]/)  # results are ['a'] or []
  results = results[0]
  return results == 'a' || results == 'e' || results == 'i' || results == 'o' || results == 'u' || results == 'A' || results == 'E' || results == 'I' || results == 'O' || results == 'U'
end

def words_starting_with_un_and_ending_with_ing(text)
  results = text.scan(/un\w+ing/) # say what we are matching literally: "we are looking for an 'un' followed by any number of characters (the '+' says we will match whatever comes before it 1 or more times) followed by 'ing'"
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)  # "we are looking for a new word that has 5 alpha-numeric characters and then the word ends"
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  # '^' is start of a line and '$' is end of line
  # #match? returns true/false
  text.match?(/^[A-Z].*\W$/) # we are looking for the start of a line with A-Z and any single character zero or more times followed by a non-word character followed by the end of aline
end

def valid_phone_number?(phone)
  phone.match?(/^\(?([0-9]{3})\)?[-.●\s]?([0-9]{3})[-.●\s]?([0-9]{4})$/) # https://www.oreilly.com/library/view/regular-expressions-cookbook/9781449327453/ch04s02.html
end
