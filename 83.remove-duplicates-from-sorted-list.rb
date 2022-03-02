#
# @lc app=leetcode id=83 lang=ruby
#
# [83] Remove Duplicates from Sorted List
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
# @param {ListNode} head
# @return {ListNode}
test_head = [1,1,2]

def delete_duplicates(head)
    return nil if head.nil?
    
    h = t = head
    n = head.next

    until n.nil?
        if n.val != t.val
            t = t.next = n
        end
        n = n.next
    end
    
    t.next = nil
    h
end

p delete_duplicates(test_head)
# @lc code=end

