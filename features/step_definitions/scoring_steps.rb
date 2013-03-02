Given /^the coin tosses are "([^"]*)"$/ do |values|
  @values = values.chars.map do |value|
    case value
      when 'h'
        :heads
      when 't'
        :tails
    end
  end
end

When /^the scorer is run$/ do
  @scorer = Scorer.new @values
end

Then /^the score should be "([^"]*)"$/ do |score|
  @scorer.score.should eq score.to_i
end
