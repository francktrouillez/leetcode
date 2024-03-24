# Problem: 1. Two Sum
#
# Given an array of integers, return indices of the two numbers
# such that they add up to a specific target.
#
# The idea of the solution is to iterate over the array and store
# the difference between the target and the current number in a hash.
# If the difference is found in the hash, we return the indices of
# the two numbers.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    break [hash[target - num], index] if hash[target - num]
    hash[num] = index
  end
end
