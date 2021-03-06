When /^I cast$/ do
  my_monogram_values
end

Then /^I will get back six monograms$/ do
  expect(my_monogram_values).to have(6).items
end

Then /^each will have an integral score between 6 and 9 inclusive$/ do
  expect(my_monogram_values).to all be_an(Integer).and be_between(6, 9).inclusive
end