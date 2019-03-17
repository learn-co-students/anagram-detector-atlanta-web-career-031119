class Anagram

  attr_accessor :word, :list

  def initialize(word)
    @word = word
  end

  def same_contents?(array_1, array_2)
    ## checks if arrays have the same contents in different indices
    array_1.sort == array_2.sort
  end


  def match(array)
    matches = []
    letters = @word.split("")

    array.each do |word|
      word_letters = word.split("")
      matches << word if same_contents?(letters, word_letters)
    end

    matches
  end

end
