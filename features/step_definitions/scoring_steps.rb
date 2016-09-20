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

Then /^the score should be "(#{CAPTURE_A_NON_NEGATIVE_INTEGER})"$/ do |score|
  expect(Scorer.new(@values).score).to eq(score)
end
