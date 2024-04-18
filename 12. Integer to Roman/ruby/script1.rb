# 12. Integer to Roman
#
# The idea is to iterate through the hash of roman numerals and their corresponding integer values.
# We added the special case of 4 and 9 to the hash to avoid having to add a separate condition for them.
# We iterate through the hash and append the roman numeral to the result string the number of times the integer value fits into the input number.

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

# @param {Integer} num
# @return {String}
def int_to_roman(num)
  ROMAN_TO_INT.each_with_object("") do |(roman, int), result|
    result << roman * (num / int)
    num %= int
  end
end
