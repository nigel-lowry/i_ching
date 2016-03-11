CAPTURE_AN_INTEGER = Transform /^(\d+)$/ do |integer_as_string|
  integer_as_string.to_i
end