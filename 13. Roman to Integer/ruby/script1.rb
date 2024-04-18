# 13. Roman to Integer
#
# The idea is to iterate through the hash of roman numerals and their corresponding integer values.
# We iterate through the hash and subtract the integer value from the input string as many times as the roman numeral fits into the beginning of the string.

ROMAN_TO_INT = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  ROMAN_TO_INT.reduce(0) do |result, (roman, value)|
    while s.start_with?(roman)
      result += value
      s = s[roman.length..-1]
    end
    result
  end
end
