# 19. Remove Nth Node From End of List
#
# The idea is to use two pointers, one slow and one fast.
# We offset the fast pointer by n nodes.
# We move both pointers until the fast pointer reaches the end of the list.
# We remove the node after the slow pointer.
# We also use a dummy node to handle the case where the first node is removed.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy = ListNode.new(0, head)
  slow = dummy
  fast = dummy
  n.times do
    fast = fast.next
  end
  while fast.next
    slow = slow.next
    fast = fast.next
  end
  slow.next = slow.next.next
  dummy.next
end
