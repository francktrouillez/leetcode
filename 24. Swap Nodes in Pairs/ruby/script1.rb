# 24. Swap Nodes in Pairs
#
# The idea is to swap the current node with the next node.
# We use a dummy node to handle the case where the first node is swapped.
# We iterate through the list and swap the current node with the next node.
# We return the head of the swapped list.

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

  dummy = ListNode.new(0, head.next)
  left = head
  right = head.next
  while left && right
    next_node = right.next
    right.next = left
    left.next = next_node&.next || next_node
    left = next_node
    right = next_node&.next
  end
  dummy.next
end
