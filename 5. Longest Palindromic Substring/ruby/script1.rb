# Problem 5. Longest Palindromic Substring
#
# The idea is to iterate through the string and find the longest palindrome centered at each character.
# The palindrome can be odd or even, so we need to check both cases.
# The helper methods odd_palindrome_from_center and even_palindrome_from_center are used to find the longest palindrome centered at a given index.
# The longest palindrome is then found by comparing the longest palindrome centered at each character.
# The time complexity is O(n^2) because we iterate through the string and check each character.

# @param {String} s
# @param {Integer} index
# @return {String}
def odd_palindrome_from_center(s, index)
  length = s.length
  left = index
  right = index
  while left >= 0 && right < length && s[left] == s[right]
    left -= 1
    right += 1
  end
  s[left + 1..right - 1]
end

# @param {String} s
# @param {Integer} index
# @return {String}
def even_palindrome_from_center(s, index)
  length = s.length
  left = index
  right = index + 1
  while left >= 0 && right < length && s[left] == s[right]
    left -= 1
    right += 1
  end
  s[left + 1..right - 1]
end

# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if s.length <= 1

  s.length.times.reduce('') do |longest, index|
    odd_palindrome = odd_palindrome_from_center(s, index)
    even_palindrome = even_palindrome_from_center(s, index)
    [longest, odd_palindrome, even_palindrome].max_by(&:length)
  end
end
