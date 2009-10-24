require File.dirname(__FILE__) + '/spec_helper'
require 'morse_translator'

describe MorseTranslator do
  before :each do
    @morse = MorseTranslator.new
  end

  it "translates 'a'" do
    @morse.translate('a').should == '.-'
  end

  it "translates 'A'" do
    @morse.translate('A').should == '.-'
  end

  it "translates 'b' do" do
    @morse.translate('b').should == '-...'
  end

  it "translates 'c' do" do
    @morse.translate('b').should == '-...'
  end

  it "translates 'ab'" do
    @morse.translate('ab').should == '.--...'
  end
end

