# Problem: 4. Median of Two Sorted Arrays
#
# The idea is to merge the two arrays, sort them, and then find the median by taking the middle element.

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums = (nums1 + nums2).sort
  length = nums.length
  if length.odd?
    nums[length / 2]
  else
    (nums[length / 2 - 1] + nums[length / 2]) / 2.0
  end
end
