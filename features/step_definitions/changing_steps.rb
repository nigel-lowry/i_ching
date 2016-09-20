When /^the monogram is "([^"]*)"$/ do |monogram|
  score = case monogram
            when '.---'
              9
            when '- -'
              8
            when '---'
              7
            when '.- -'
              6
          end

  @plotter = MonogramPlotter.new score
end

Then /^the present should be "([^"]*)"$/ do |present|
  expect(@plotter.present).to eq(present)
end

Then /^the future should be "([^"]*)"$/ do |future|
  expect(@plotter.future).to eq(future)
end