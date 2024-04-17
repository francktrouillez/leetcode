# 9. Palindrome Number
#
# The idea is to reverse the integer and compare it with the original integer.
# We use the logic used in the "7.Reverse Integer/ruby/script2.rb" snippet to reverse the integer.
# We then compare the original integer with the reversed integer.

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return true if x == 0
  return false if x < 0
  return false if x % 10 == 0 && x != 0

  original_number = x
  revert_number = 0
  while x > 0
    revert_number = revert_number * 10 + x % 10
    x /= 10
  end
  original_number == revert_number
end
