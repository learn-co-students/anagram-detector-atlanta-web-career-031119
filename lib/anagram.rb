require 'pry'

class Anagram
    def initialize(the_word)
        @the_word=the_word
    end

    attr_accessor :the_word

    def match(words)
        array=words.reduce([]) do |acc, word|
            if word.length==@the_word.length
                if (@the_word.split('')-word.split('')).empty?
                    acc<<word
                end
            end
            acc
        end
        array
    end
end