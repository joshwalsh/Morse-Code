require 'loads_morse_translations'

class MorseTranslator
  include LoadsMorseTranslations

  def translate(phrase)
    phrase = phrase.downcase
    phrase = sanitize_phrase(phrase).squeeze(' ')

    phrase.chars.inject('') do |phrase, letter| 
      translation = lookup_translation_for_letter(letter)
      
      phrase << unless translation.nil?
        "#{translation} "
      end.to_s
    end
    
    phrase.strip
  end

  def lookup_translation_for_letter(letter)
    load_morse_translations[letter]
  end

  def sanitize_phrase(phrase)
    phrase.gsub(/./) do |letter|
      if load_morse_translations[letter]
        letter
      end.to_s
    end
  end
end
