require 'loads_morse_translations'

class MorseTranslator
  include LoadsMorseTranslations

  def translate(phrase)
    phrase = phrase.downcase
    phrase.gsub!(/ +/, ' ')

    phrase.chars.inject('') do |phrase, letter| 
      translation = lookup_translation_for_letter(letter)
      phrase << "#{translation} " unless translation.nil?
    end
    
    phrase.strip
  end

  def lookup_translation_for_letter(letter)
    load_morse_translations[letter]
  end
end
