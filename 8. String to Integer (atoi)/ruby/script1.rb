# 8. String to Integer (atoi)
#
# The idea is to use the built-in to_i method to convert the string to an integer.
# We need to handle the overflow case by clamping the result to the range of a 32-bit signed integer.
# (we could build the whole thing from scracth, but I don't see the point in this case to be honest)

# @param {String} s
# @return {Integer}
def my_atoi(s)
  s.to_i.clamp(-2**31, 2**31 - 1)
end
