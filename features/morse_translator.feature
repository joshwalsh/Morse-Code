Feature:  Translate english into it's morse code .- equivalent.

  As a secret operative
  I want to translate orders into morse code
  So that I can transmit them secretly over a wire

Scenario Outline: translating 

  Given I want to translate a word to morse code
  When I translate <english>
  Then the result should be translated to <morse>

  Examples:
    | english | morse |
    | "letter" | ".-.. . - - . .-." |
    | "The quick brown fox jumps over the lazy dog" | "- .... . / --.- ..- .. -.-. -.- / -... .-. --- .-- -. / ..-. --- -..- / .--- ..- -- .--. ... / --- ...- . .-. / - .... . / .-.. .- --.. -.-- / -.. --- --." |
