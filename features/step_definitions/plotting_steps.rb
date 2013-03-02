Given /^the score is "(#{CAPTURE_A_NUMBER})"$/ do |score|
  @score = score
end
Then /^the representation should be "([^"]*)"$/ do |representation|
  LinePlotter.new(@score).to_s.should eq representation
end