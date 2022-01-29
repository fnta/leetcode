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
def delete_duplicates(head)
    cursor = head

    while cursor and cursor.next
      if cursor.next.val == cursor.val
        cursor.next = cursor.next.next
      else
        cursor = cursor.next
      end
    end
  
    head
end
# @lc code=end

