Given(/^the hexagram from top to bottom is "([^"]*)"$/) do |hexagram_string_representation|
  @hexagram = Hexagram.new hexagram_string_representation
end

Then(/^its number is (#{CAPTURE_A_NON_NEGATIVE_INTEGER})$/) do |number|
  expect(@hexagram.number).to eq(number)
end