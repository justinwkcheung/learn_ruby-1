def echo(phrase)
  "#{phrase}"
end

def shout(phrase)
  "#{phrase.upcase}"
end

def repeat(phrase, num = 2)
  string = ("#{phrase} " * num)
  word = string.split(" ")
  return word.join(" ")
end

def start_of_word(word, letter_number)
  current_letter = 0
  array = []
  while current_letter < letter_number
    array << word[current_letter]
    current_letter += 1
  end
  return array.join("")
end

def first_word(word)
  split_word = word.split(" ")
  return split_word[0]
end

def titleize(word)
  array = word.split(" ")
  index = []
  array.each_with_index do |word, num|
    if num == 0
      index << word.capitalize
    elsif word == "and" || word == "the" || word == "over"
      index << word
    else
      index << word.capitalize
    end
  end
  return index.join(" ")
end
