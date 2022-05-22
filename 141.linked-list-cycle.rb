#
# @lc app=leetcode id=141 lang=ruby
#
# [141] Linked List Cycle
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    
end

require 'minitest/autorun'

class HasCycleTest < Minitest::Test
  def test_hasCycle1
    list = ListNode.new(3)
    list.next = ListNode.new(2)
    list.next.next = ListNode.new(0)
    list.next.next.next = ListNode.new(-4)

    assert_equal true, hasCycle(list)
  end

  def test_hasCycle2
    list = ListNode.new(1)
    list.next = ListNode.new(2)

    assert_equal true, hasCycle(list)
  end
end

class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# @lc code=end

