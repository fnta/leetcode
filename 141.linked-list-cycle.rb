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

class PathSumhTest < Minitest::Test
  def test_has_path_sum1
    tn1 = TreeNode.new(5)
    tn2 = TreeNode.new(4)
    tn3 = TreeNode.new(11)
    tn4 = TreeNode.new(7)
    tn5 = TreeNode.new(2)
    tn6 = TreeNode.new(8)
    tn7 = TreeNode.new(13)
    tn8 = TreeNode.new(4)
    tn9 = TreeNode.new(1)
    tn1.left = tn2
    tn2.left = tn3
    tn3.left = tn4
    tn3.right = tn5
    tn1.right = tn6
    tn6.left = tn7
    tn6.right = tn8
    tn8.right = tn9
    assert_equal true, has_path_sum(tn1, 22)
  end

  def test_has_path_sum2
    tn1 = TreeNode.new(1)
    tn2 = TreeNode.new(2)
    tn3 = TreeNode.new(3)
    tn1.left = tn2
    tn2.right = tn3
    assert_equal false, has_path_sum(tn1, 5)
  end

  def test_has_path_sum3
    tn1 = TreeNode.new(1)
    tn2 = TreeNode.new(2)
    tn1.left = tn2
    assert_equal false, has_path_sum(tn1, 0)
  end
end
# @lc code=end

