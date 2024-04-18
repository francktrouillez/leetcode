# 11. Container With Most Water
#
# The idea is to use two pointers, one at the beginning and one at the end of the array.
# The area is calculated as the minimum of the two heights multiplied by the distance between the two pointers.
# The maximum area is updated if the current area is greater than the maximum area.
# The pointer with the smaller height is moved towards the center of the array.

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_area = 0
  left = 0
  right = height.length - 1
  while left < right
    max_area = [max_area, [height[left], height[right]].min * (right - left)].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max_area
end
