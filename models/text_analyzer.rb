
class TextAnalyzer

  VOWELS = "AEIOUaeiou"

  attr_reader :text 
  
  def initialize(text)
    @text = text 
  end

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    text.split(" ").count
  end

  def count_of_vowels
    text.count VOWELS
  end

  def count_of_consonants
    text.count("^#{VOWELS} ")
  end

  def most_used_letter
    letter_times = {}
    formatted_text = text.delete(' ').upcase
    formatted_text.each_char{|letter| letter_times[letter] = formatted_text.count(letter)}
    letter_times.sort_by{|letter, times| [times, letter]}.last
  end

end
