# 6. Zigzag Conversion
#
# The idea is to iterate through the string and add each character to the corresponding row.
# The direction of the row is changed when the row reaches the top or bottom.
# The time complexity is O(n) because we iterate through the string once.

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1

  rows = Array.new(num_rows) { '' }
  row = 0
  direction = 1
  s.each_char do |char|
    rows[row] += char
    row += direction
    if row == num_rows - 1
      direction = -1
    elsif row == 0
      direction = 1
    end
  end
  rows.join
end
