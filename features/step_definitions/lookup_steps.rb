When(/^the hexagram from top to bottom is "([^"]*)"$/) do |hexagram_string_representation|
  @hexagram = IChing::Hexagram.new hexagram_string_representation
end

Then("its number is {int}") do |number|
  expect(@hexagram.number).to eq(number)
end