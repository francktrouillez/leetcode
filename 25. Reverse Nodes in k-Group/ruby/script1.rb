# 25. Reverse Nodes in k-Group
#
# The idea is to transform the linked list into an array of nodes.
# This is kinda ugly and defeating the purpose of the problem, but it's the easiest way to reverse the nodes in groups of k I found.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
  nodes = []
  while head
    nodes << head
    head = head.next
  end
  (0...nodes.length).step(k) do |i|
    break if i + k > nodes.length
    nodes[i, k] = nodes[i, k].reverse
  end
  nodes.each_with_index do |node, i|
    node.next = nodes[i + 1]
  end
  nodes.first
end
