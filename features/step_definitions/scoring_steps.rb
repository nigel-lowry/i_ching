Given /^the three coin tosses are "([^"]*)"$/ do |values|
  @values = values.chars.map do |value|
    case value
      when 'h'
        :heads
      when 't'
        :tails
    end
  end
end

When /^the tosses are evaluated$/ do
  @scorer = Scorer.new @values
end

Then /^the score should be "(#{CAPTURE_A_NON_NEGATIVE_INTEGER})"$/ do |score|
  expect(@scorer.score).to eq(score)
end
