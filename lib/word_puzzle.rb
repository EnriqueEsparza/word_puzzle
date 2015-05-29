class String
  define_method(:puzzle) do
    sentence = []
    words = self.split

    words.each() do |word|

      letters = word.split("")

      letters.each() do |letter|

        if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "A" || letter == "E" || letter == "I" || letter == "O" || letter == "U"
          letter.replace("-")
        end
      end
      sentence.push(letters.join())
    end
    sentence.join(" ")


  end
end
