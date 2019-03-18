require 'pry'

class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        word_anagrams = []
        array.map do |word|
           if word.split('').sort == self.word.split('').sort
            word_anagrams<<word
           end
        end
        word_anagrams
    end

end
