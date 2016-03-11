When /^I cast$/ do
  my_monogram_values
end

Then /^I will get back six monograms$/ do
  expect(my_monogram_values).to have(6).items
end

When /^each will have a score between 6 and 9 inclusive$/ do
  expect(my_monogram_values.all? {|monogram_value| [6, 7, 8, 9].include? monogram_value }).to be_true
end