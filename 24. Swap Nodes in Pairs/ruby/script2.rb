# 24. Swap Nodes in Pairs
#
# The idea is to recursively swap the current node with the next node.
# We make sure to return the right node after swapping the nodes.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  right = head.next
  head.next = swap_pairs(right.next)
  right.next = head
  right
end
