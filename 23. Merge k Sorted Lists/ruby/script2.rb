# 23. Merge k Sorted Lists
#
# The idea is to merge all the lists by sorting all the nodes and linking them together.
# We reduce the lists by adding all the nodes to an array and sorting them by value.
# We link the nodes together and return the head of the merged list.

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
  nodes = lists.reduce([]) do |nodes, list|
    until list.nil?
      nodes << list
      list = list.next
    end
    nodes
  end
  nodes.sort_by!(&:val)
  nodes.each_with_index do |node, i|
    node.next = nodes[i + 1]
  end
  nodes.first
end
