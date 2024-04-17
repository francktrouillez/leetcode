# 7. Reverse Integer
#
# The idea is to reverse the integer by taking the last digit of the integer and adding it to the result.
# We need to handle the case where the integer is negative and the overflow case.

# @param {Integer} x
# @return {Integer}
def reverse(x)
  is_negative = x < 0
  x = -x if is_negative

  result = 0
  while x > 0
    result = result * 10 + x % 10
    return 0 if result >= 2**31

    x /= 10
  end
  is_negative ? -result : result
end
