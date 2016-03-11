# encoding: UTF-8

Given /^the hexagram "([^"]*)"$/ do |hexagram|
  @hexagram = Hexagram.new(hexagram)
end

Then /^it's number is "([^"]*)"$/ do |number|
  expect(@hexagram.to_i).to eq(number)
end

Given /^the monograms from bottom to top are "([^"]*)"$/ do |monograms|
  @monograms = monograms.chars.map do |value|
    case value
      when '⚊'
        :unbroken
      when '⚋'
        :broken
    end
  end
end

Then /^the hexagram is "([^"]*)"$/ do |hexagram|
  @hexagram2 = Hexagram2.new(@monograms)
  expect(@hexagram2.to_s).to eq(hexagram)
end