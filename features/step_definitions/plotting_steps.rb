When /^the score is "(#{CAPTURE_A_NUMBER})"$/ do |score|
  @score = score
end

Then /^the monogram should be "([^"]*)"$/ do |monogram|
  expect(MonogramPlotter.new(@score).to_s).to eq(monogram)
end