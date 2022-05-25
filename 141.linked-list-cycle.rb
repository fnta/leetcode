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
  def test_hasCycle
    list = ListNode.new(3)
    list.next = ListNode.new(2)
    list.next.next = ListNode.new(0)
    list.next.next.next = ListNode.new(-4)

    assert_equal true, hasCycle(list)
  end

  def test_run
    list = ListNode.new(1)
    list.next = ListNode.new(2)
    list.next.next = ListNode.new(3)
    list.next.next.next = ListNode.new(4)
    new_list = swap_pairs(list)
    assert_equal(2, new_list.val)
    assert_equal(1, new_list.next.val)
    assert_equal(4, new_list.next.next.val)
    assert_equal(3, new_list.next.next.next.val)


    list = ListNode.new(1)
    new_list = swap_pairs(list)
    assert_equal(1, new_list.val)
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

