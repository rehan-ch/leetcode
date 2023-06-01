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
    temp_node = ListNode.new
    current_node = temp_node
  
    while list1 && list2
      if list1.val <= list2.val
        current_node.next = list1
        list1 = list1.next
      else
        current_node.next = list2
        list2 = list2.next
      end
      current_node = current_node.next
    end
    current_node.next = list1 || list2
  
    temp_node.next
  end