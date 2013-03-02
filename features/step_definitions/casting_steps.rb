When /^I cast$/ do
  @caster = Caster.new
  @result = @caster.cast
end

Then /^I will get back six lines$/ do
  @result.size = 6
end