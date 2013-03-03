When /^I cast$/ do
  @caster = Caster.new
  @result = @caster.cast
end

Then /^I will get back six lines$/ do
  @result.size.should eq 6
end
When /^each will have a score of between 6 and 9 inclusive$/ do
  @result.all? {|line_value| (6..9).include? line_value }.should be
end