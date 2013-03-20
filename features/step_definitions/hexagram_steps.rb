Given /^the hexagram "([^"]*)"$/ do |hexagram|
  @hexagram = Hexagram.new(hexagram)
end

Then /^it's number is "([^"]*)"$/ do |number|
  @hexagram.to_i.should eq number
end