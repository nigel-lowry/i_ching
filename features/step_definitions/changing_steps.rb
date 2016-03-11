Given /^the representation is "([^"]*)"$/ do |representation|
  score = case representation
            when '.---'
              9
            when '- -'
              8
            when '---'
              7
            when '.- -'
              6
          end

  @plotter = LinePlotter.new score
end

Then /^the present should be "([^"]*)"$/ do |present|
  expect(@plotter.present).to eq(present)
end

When /^the future should be "([^"]*)"$/ do |future|
  expect(@plotter.future).to eq(future)
end