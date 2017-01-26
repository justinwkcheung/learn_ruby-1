def translate(word)
  semi_word = ""
  words_array = word.split(" ")
  # puts "words_array = #{words_array}"
  words_array.each do |x|
  word_array = x.split("")
  # print word_array
      word_array.each do |letter|
        if word_array[0] == "a" || word_array[0] == "e" || word_array[0] == "i" || word_array[0] == "o"
          break
        elsif word_array[0] == "u"
          if word_array.last == "q"
            word_array.rotate!
          else
            break
          end
        elsif letter != "a" || letter != "e" || letter != "i" || letter != "o" || letter != "u"
          word_array.rotate!
          # puts "word_array = #{word_array}"
        end
        break if word_array[0] == "a" || word_array[0] == "e" || word_array[0] == "i" || word_array[0] == "o"
        break if word_array[0] == "u" && word_array.last != "q"
      end

      puts semi_word += " " +  word_array.join("") + "ay"
  end
  return semi_word.strip
end
