# 7. Reverse Integer
#
# The idea is to convert the integer to a string, reverse the string, and then convert it back to an integer.
# We need to handle the case where the integer is negative and the overflow case.

# @param {Integer} x
# @return {Integer}
def reverse(x)
  string_x = x.to_s
  result = if string_x[0] == "-"
    -string_x[1..].reverse.to_i
  else
    string_x.reverse.to_i
  end

  return 0 if result < -2**31 || result > 2**31 - 1
  result
end
