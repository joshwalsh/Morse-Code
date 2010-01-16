Given /I want to translate a word to morse code/ do
  @morse = MorseTranslator.new
end

When /^I translate "([^\"]*)"$/ do |arg1|
  @translation = @morse.translate(arg1)
end

Then /^the result should be translated to "([^\"]*)"$/ do |arg1|
  @translation.should == arg1
end
