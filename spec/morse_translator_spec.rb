require File.dirname(__FILE__) + '/spec_helper'
require 'morse_translator'

describe MorseTranslator do
  before :each do
    @morse = MorseTranslator.new
  end

  it "translates a single lowercase letter" do
    @morse.translate('a').should == '.-'
  end

  it "translates a single uppercase letter" do
    @morse.translate('A').should == '.-'
  end

  it "translates a word" do
    @morse.translate('letter').should == '.-.. . - - . .-.'
  end

  it "translates a sentance" do
    @morse.translate('The quick brown fox jumps over the lazy dog').should == '- .... . / --.- ..- .. -.-. -.- / -... .-. --- .-- -. / ..-. --- -..- / .--- ..- -- .--. ... / --- ...- . .-. / - .... . / .-.. .- --.. -.-- / -.. --- --.'
  end

  it "eats duplicate spaces" do
    @morse.translate('The       quick brown fox jumps over the lazy dog.').should == '- .... . / --.- ..- .. -.-. -.- / -... .-. --- .-- -. / ..-. --- -..- / .--- ..- -- .--. ... / --- ...- . .-. / - .... . / .-.. .- --.. -.-- / -.. --- --.'
  end

  it "ignores punctuation" do
    pending
    @morse.translate('The & quick -(*^*@#%)& brown fox jumps over the lazy dog.').should == '- .... . / --.- ..- .. -.-. -.- / -... .-. --- .-- -. / ..-. --- -..- / .--- ..- -- .--. ... / --- ...- . .-. / - .... . / .-.. .- --.. -.-- / -.. --- --.'
  end
    
end

