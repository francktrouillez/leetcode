# 23. Merge k Sorted Lists
#
# The idea is to reuse the merge the lists by 2 and using the merge_two_lists methid from 21.%20Merge%20Two%20Sorted%20Lists/ruby/script1.rb.
# We reduce the lists by merging the first two lists and the merged list with the next list.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return nil if lists.empty?

  lists.reduce { |list1, list2| merge_two_lists(list1, list2) }
end

# @param {ListNode[]} lists1
# @param {Integer} left
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
