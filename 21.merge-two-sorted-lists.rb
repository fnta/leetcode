#
# @lc app=leetcode id=21 lang=ruby
#
# [21] Merge Two Sorted Lists
#

# @lc code=start
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
    head = current = ListNode.new('')
    while (list1 || list2)
        if list1 && list2 
           if list1.val <= list2.val
             current.next = list1
             current = current.next
              list1 = list1.next 
            elsif list2.val < list1.val      
             current.next = list2
             current = current.next
             list2 = list2.next
           end  
        elsif list1 && !list2   
           current.next = list1 
           return head.next
        elsif list2 && !list1
            current.next = list2
            return head.next
        end  
    end   
    return head.next
end
# @lc code=end

