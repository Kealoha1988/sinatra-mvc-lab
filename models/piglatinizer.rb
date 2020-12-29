class PigLatinizer
  attr_accessor :word
  
  def initialize(word)
    @word = word
    do_it
  end
  
  def latin(blob)
    vowel = ["a", "e", "i", "o", "u"]

    if vowel.include?(blob[0])
      blob + "way"
    elsif vowel.include?(blob[1])
      blob[1..blob.length] + blob[0] + "ay"
    elsif vowel.include?(blob[2])
      blob[2..blob.length] + blob[0] +  blob[1] + "ay"
    elsif vowel.include?(word[3])
      blob[3..blob.length] + blob[0] + blob[1] + blob[2] + "ay"
    end
  end

  def do_it
    cool = []
    if @word.include? (" ")
      @word.split(" ").map do |x|
      latin(x)
      end.join(" ")

       else
      latin(@word)
    end
  end



end