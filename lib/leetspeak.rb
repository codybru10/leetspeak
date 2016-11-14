class String
  define_method(:leetspeak) do
    leet_sentence = []
    the_sentence = self.split("")
    the_sentence.each().with_index() do |letter, i|
      if letter == "e"
        leet_sentence.push("3")
      elsif letter == "o"
        leet_sentence.push("0")
      elsif letter == "I"
        leet_sentence.push("1")
      elsif letter == "s" and the_sentence[i - 1] != " " and i > 0
        leet_sentence.push("z")
      else
        leet_sentence.push(letter)
      end
    end
    leet_sentence.join("")
  end
end
