When /^the score is "(#{CAPTURE_A_NUMBER})"$/ do |score|
  @score = score
end

Then /^the representation should be "([^"]*)"$/ do |representation|
  expect(LinePlotter.new(@score).to_s).to eq(representation)
end