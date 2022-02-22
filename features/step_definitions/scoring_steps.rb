When /^the three coin tosses are "([^"]*)"$/ do |values|
  @values = values.chars.map do |value|
    case value
      when 'h'
        :heads
      when 't'
        :tails
    end
  end
end

Then("the score should be {string}") do |string|
  expect(IChing::Scorer.new(@values).score).to eq(string.to_i)
end
