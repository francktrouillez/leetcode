# 21. Merge Two Sorted Lists
#
# The idea is to use a dummy node to keep track of the head of the merged list.
# We iterate through both lists and append the smaller node to the merged list.
# We lastly append the remaining nodes to the merged list.
# We return the next node of the dummy node, to correspond with the head of the merged list.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  dummy = ListNode.new
  current = dummy
  while list1 && list2
    if list1.val < list2.val
      current.next = list1
      list1 = list1.next
    else
      current.next = list2
      list2 = list2.next
    end
    current = current.next
  end
  current.next = list1 || list2
  dummy.next
end
