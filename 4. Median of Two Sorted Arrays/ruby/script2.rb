# Problem: 4. Median of Two Sorted Arrays
#
# The idea is to merge the two arrays, sort them, and then find the median by taking the middle element.
# The merge here is a custom implementation to take advantage of the fact that the arrays are already sorted.

# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def merge(a, b)
  index1 = 0
  index2 = 0
  length1 = a.length
  length2 = b.length
  merged_array = []
  until index1 == length1 || index2 == length2
    if a[index1] < b[index2]
      merged_array << a[index1]
      index1 += 1
    else
      merged_array << b[index2]
      index2 += 1
    end
  end
  if index1 < length1
    merged_array += a[index1..-1]
  elsif index2 < length2
    merged_array += b[index2..-1]
  end
  merged_array
end

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums = merge(nums1, nums2)
  length = nums.length
  if length.odd?
    nums[length / 2]
  else
    (nums[length / 2 - 1] + nums[length / 2]) / 2.0
  end
end
