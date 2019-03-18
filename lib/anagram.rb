require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
    @matches = []
  end

  def match(array)
    array.each do |possibles|
    
      if possibles.split("").sort == @word.split("").sort
        @matches << possibles

      end
      end
      @matches
    end

end
