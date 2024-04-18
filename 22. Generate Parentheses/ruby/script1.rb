# 22. Generate Parentheses
#
# The idea is to generate all possible combinations of parentheses recursively.
# We generate all possible combinations of parentheses by adding a pair of parentheses to each combination of parentheses.

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  return [] if n == 0
  return ["()"] if n == 1

  generate_parenthesis(n - 1).each_with_object(Set.new) do |parenthesis, result|
    (0..parenthesis.length).each do |i|
      result.add(parenthesis[0...i] + "()" + parenthesis[i..])
    end
  end.to_a
end
