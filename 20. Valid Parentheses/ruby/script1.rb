# 20. Valid Parentheses
#
# The idea is to use a stack to keep track of the opening parentheses.
# We push the opening parentheses onto the stack.
# We pop the opening parentheses from the stack when we encounter the closing parentheses.
# We return false if the closing parentheses does not match the opening parentheses.
# We return true if the stack is empty.

PAIRING_CHARS = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  s.each_char do |char|
    if PAIRING_CHARS.key?(char)
      stack.push(char)
    else
      previous_char = stack.pop
      return false unless char == PAIRING_CHARS[previous_char]
    end
  end
  stack.empty?
end
