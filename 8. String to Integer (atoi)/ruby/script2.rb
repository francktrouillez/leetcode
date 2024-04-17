# 8. String to Integer (atoi)
#
# The idea is to iterate through the string and convert the string to an integer.
# We need to handle the case where the integer is negative and the overflow case.

NUMBER_CHARS = %w[0 1 2 3 4 5 6 7 8 9]

# @param {String} s
# @return {Integer}
def my_atoi(s)
  s = s.gsub(/^ +/, '') # remove leading spaces
  is_negative = s[0] == "-" # check if the number is negative
  s = s[1..] if s[0] == "-" || s[0] == "+" # remove the sign if it exists

  # Retrieve the number part of the string
  end_index = 0
  loop do
    break unless NUMBER_CHARS.include?(s[end_index]) && end_index < s.length
    end_index += 1
  end
  end_index -= 1
  return 0 if end_index < 0

  s = s[0..end_index]

  # Convert the string to an integer
  result = 0
  s.each_char do |char|
    result = result * 10 + char.to_i # we could use a map for the conversion, but I think this is a bit too much
    return is_negative ? -2**31 : 2**31 - 1 if result >= 2**31
  end

  # Handle the negative case
  is_negative ? -result : result
end
