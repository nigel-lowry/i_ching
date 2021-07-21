When /^the monogram is "([^"]*)"$/ do |monogram|
  @score = case monogram
             when '.---'
               9
             when '- -'
               8
             when '---'
               7
             when '.- -'
               6
           end
end

Then /^the present should be "([^"]*)"$/ do |present|
  expect(MonogramPlotter.new(@score).present).to eq(present)
end

Then /^the future should be "([^"]*)"$/ do |future|
  expect(MonogramPlotter.new(@score).future).to eq(future)
end