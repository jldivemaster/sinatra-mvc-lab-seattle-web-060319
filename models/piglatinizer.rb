class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinizer(text)
    vowel = "aeiou"

    if vowel.include?(text[0])
      return text + "way"
    end

    text.each_char.with_index do |char, i|
      if vowel.include?(char)
        return text[i..-1] + text[0...i] + "ay"
      end
    end
  end

end
