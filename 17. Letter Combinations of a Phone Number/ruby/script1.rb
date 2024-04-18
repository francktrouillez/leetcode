# 17. Letter Combinations of a Phone Number
#
# The idea is to iterate through the digits and generate all possible combinations of letters.
# We iterate through the digits and generate all possible combinations of letters by mapping each letter to the current combination.

PHONE_NUMBER_LETTERS = {
  "1" => [],
  "2" => %w[a b c],
  "3" => %w[d e f],
  "4" => %w[g h i],
  "5" => %w[j k l],
  "6" => %w[m n o],
  "7" => %w[p q r s],
  "8" => %w[t u v],
  "9" => %w[w x y z]
}

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?

  digits.chars.reduce([""]) do |combinations, digit|
    combinations.flat_map do |combination|
      PHONE_NUMBER_LETTERS[digit].map { |letter| combination + letter }
    end
  end
end
