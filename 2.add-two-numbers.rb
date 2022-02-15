#
# @lc app=leetcode id=2 lang=ruby
#
# [2] Add Two Numbers
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
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

test_l1 = [2,4,3]
test_l2 = [5,6,4]

def add_two_numbers(l1, l2)
    n1, n2 = l1, l2

    current = answer = ListNode.new(nil)
    carry = 0

    while n1 || n2 || 0 < carry
        a = n1 ? n1.val : 0
        b = n2 ? n2.val : 0
        x = a + b + carry

        carry = x /10
        x -= 10 if 0 < carry

        node = ListNode.new(x)
        current&.next = node
        current = node

        n1, n2 = n1&.next, n2&.next
    end

    answer.next
end

p = add_two_numbers(test_l1, test_l2)
# @lc code=end

