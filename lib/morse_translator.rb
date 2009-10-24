require 'loads_morse_translations'

class MorseTranslator
  include LoadsMorseTranslations

  def translate(phrase)
    phrase = phrase.downcase.gsub(/\s/, '')

    phrase.chars.inject('') do |phrase, letter| 
      phrase << lookup_translation_for_letter(letter)
    end
  end

  def lookup_translation_for_letter(letter)
    load_morse_translations[letter]
  end
end
