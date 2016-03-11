When /^I cast$/ do
  @caster = Caster.new
  @monogram_values = @caster.cast
end

Then /^I will get back six monograms$/ do
  expect(@monogram_values).to have(6).items
end

When /^each will have a score between 6 and 9 inclusive$/ do
  expect(@monogram_values.all? {|monogram_value| (6..9).include? monogram_value }).to be_true
end