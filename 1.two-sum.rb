#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
end

require 'minitest/autorun'

class TwoSumTest < Minitest::Test
    def test_two_sum1
      test_nums1 = [2,7,11,15]
      test_target1 = 9
      test_nums2 = [3,2,4]
      test_target2 = 6
      test_nums3 = [3,3]
      test_target3 = 6
  
      assert_equal [0,1], two_sum(test_nums1, test_target1)
      assert_equal [1,2], two_sum(test_nums2, test_target2)
      assert_equal [0,1], two_sum(test_nums3, test_target3)
    end
  end
# @lc code=end

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
  
    def test_hasCycle3
      list = ListNode.new(1)
  
      assert_equal false, hasCycle(list)
    end
  end
  
