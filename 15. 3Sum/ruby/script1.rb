# 15. 3Sum
#
# The idea is to sort the array and iterate through the array.
# We skip duplicates by checking if the current number is the same as the previous number.
# We use two pointers to find the other two numbers that sum to zero.

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  (0..nums.length - 3).each_with_object([]) do |i, result|
    next if i > 0 && nums[i] == nums[i - 1]

    left = i + 1
    right = nums.length - 1
    while left < right
      sum = nums[i] + nums[left] + nums[right]
      if sum < 0
        left += 1
      elsif sum > 0
        right -= 1
      else
        result << [nums[i], nums[left], nums[right]]
        left += 1 while nums[left] == nums[left + 1]
        right -= 1 while nums[right] == nums[right - 1]
        left += 1
        right -= 1
      end
    end
  end
end
