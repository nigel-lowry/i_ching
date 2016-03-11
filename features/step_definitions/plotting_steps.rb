When /^the score is "(#{CAPTURE_A_NON_NEGATIVE_INTEGER})"$/ do |score|
  @score = score
end

Then /^the monogram should be "([^"]*)"$/ do |monogram|
  expect(MonogramPlotter.new(@score).to_s).to eq(monogram)
end