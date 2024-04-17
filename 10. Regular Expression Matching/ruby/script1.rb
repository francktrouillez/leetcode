# 10. Regular Expression Matching
#
# The idea is to use the built-in match? method of the String class to check if the string matches the pattern.
# We use the ^ and $ anchors to match the start and end of the string.

# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  s.match?(/^#{p}$/)
end
