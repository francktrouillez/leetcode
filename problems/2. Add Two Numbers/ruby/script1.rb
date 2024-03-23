# Problem: 2. Add Two Numbers
#
# You are given two non-empty linked lists representing two non-negative integers.
# The digits are stored in reverse order, and each of their nodes contains a single digit.
#
# The idea of the solution is to convert the linked lists to integers, sum them, and convert the result back to a linked list.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  result = 0
  power = 0
  while l1 || l2
    if l1
      result += l1.val * 10 ** power
      l1 = l1.next
    end
    if l2
      result += l2.val * 10 ** power
      l2 = l2.next
    end
    power += 1
  end
  result.to_s.chars.map(&:to_i).each_with_index.reduce(nil) do |acc, (num, index)|
    ListNode.new(num, acc)
  end
end
