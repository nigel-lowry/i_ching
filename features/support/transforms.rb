CAPTURE_A_NON_NEGATIVE_INTEGER = Transform /^(\d+)$/ do |non_negative_integer_as_string|
  non_negative_integer_as_string.to_i
end