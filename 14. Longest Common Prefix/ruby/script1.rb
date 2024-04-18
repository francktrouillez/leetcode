# 14. Longest Common Prefix
#
# The idea is to iterate through the array of strings and compare the current string with the result string.
# We reduce the array of strings by comparing the current string with the result string and removing the last character from the result string until the current string starts with the result string.

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?

  strs[1..].reduce(strs.first) do |result, str|
    result = result.chop until str.start_with?(result)
    result
  end
end
