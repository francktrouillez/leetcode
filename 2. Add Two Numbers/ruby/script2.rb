# Problem: 2. Add Two Numbers
#
# The idea of the solution is to iterate over the linked lists and add the values of the nodes.
# We also need to keep track of the carry value, which is the sum divided by 10.
# The sum of the two nodes is the sum of the values of the nodes plus the carry value.

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
  dummy = ListNode.new
  current = dummy
  carry = 0

  while l1 || l2
    sum = carry

    if l1
      sum += l1.val
      l1 = l1.next
    end

    if l2
      sum += l2.val if l2
      l2 = l2.next
    end

    carry = sum / 10
    current.next = ListNode.new(sum % 10)
    current = current.next
  end

  current.next = ListNode.new(carry) if carry == 1

  dummy.next
end
