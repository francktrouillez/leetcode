# Problem: 3. Longest Substring Without Repeating Characters
#
# The idea is to keep track of the start of the substring and the index of the last seen character.
# If the current character has been seen before and the last seen index is greater than the start of the substring,
# then we update the start of the substring to the index of the last seen character + 1, because it is a
# repeating character and we want to start the substring after the last seen character.

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  # Handle edge cases
  return 0 if s.empty? # If the string is empty, then the longest substring is 0.
  return 1 if s.length == 1 # If the string has only one character, then the longest substring is 1.

  start = 0
  hash = {}

  s.each_char.with_index.reduce(0) do |max, (char, index)|
    start = hash[char] + 1 if hash[char] && hash[char] >= start

    hash[char] = index
    [max, index - start + 1].max
  end
end
