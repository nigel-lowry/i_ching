When /^I cast$/ do
  @caster = Caster.new
  @line_values = @caster.cast
end

Then /^I will get back six lines$/ do
  expect(@line_values).to have(6).items
end

When /^each will have a score between 6 and 9 inclusive$/ do
  expect(@line_values.all? {|line_value| (6..9).include? line_value }).to be_true
end