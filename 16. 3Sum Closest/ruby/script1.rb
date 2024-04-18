# 16. 3Sum Closest
#
# The idea is to sort the array and iterate through the array.
# We use two pointers to find the other two numbers that sum to the target.
# We update the closest sum if the current sum is closer to the target.
# We early return if the current sum is equal to the target.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  (0..nums.length - 3).reduce(nums[0] + nums[1] + nums[2]) do |closest_sum, i|
    left = i + 1
    right = nums.length - 1
    while left < right
      sum = nums[i] + nums[left] + nums[right]
      return sum if sum == target

      if (sum - target).abs < (closest_sum - target).abs
        closest_sum = sum
      end
      if sum < target
        left += 1
      else
        right -= 1
      end
    end
    closest_sum
  end
end
