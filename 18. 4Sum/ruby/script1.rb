# 18. 4Sum
#
# The idea is really similar to 15. 3Sum.
# We sort the array and iterate through the array.
# We skip duplicates by checking if the current number is the same as the previous number.
# We apply the 3Sum algorithm to find the other three numbers that sum to the target.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  nums.sort!
  (0..nums.length - 4).each_with_object([]) do |i, result|
    next if i > 0 && nums[i] == nums[i - 1]

    (i + 1..nums.length - 3).each do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]

      left = j + 1
      right = nums.length - 1
      while left < right
        sum = nums[i] + nums[j] + nums[left] + nums[right]
        if sum < target
          left += 1
        elsif sum > target
          right -= 1
        else
          result << [nums[i], nums[j], nums[left], nums[right]]
          left += 1 while nums[left] == nums[left + 1]
          right -= 1 while nums[right] == nums[right - 1]
          left += 1
          right -= 1
        end
      end
    end
  end
end
