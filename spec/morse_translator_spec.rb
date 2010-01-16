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

  it "eats duplicate spaces" do
    @morse.translate('  a').should == '/ .-'
  end

  it "ignores punctuation" do
    @morse.translate('&^*a').should == '.-'
  end
    
end

