When("the score is {string}") do |string|
  @score = string.to_i
end

Then /^the monogram should be "([^"]*)"$/ do |monogram|
  expect(IChing::MonogramPlotter.new(@score).to_s).to eq(monogram)
end