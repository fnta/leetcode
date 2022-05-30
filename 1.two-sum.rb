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

class SingleNumberTest < Minitest::Test
    def test_single_number
      test1 = [4,1,2,1,2]
      test2 = [2,2,1]
      test3 = [1]
  
      assert_equal 1, single_number(test1)
      assert_equal 4, single_number(test2)
      assert_equal 1, single_number(test3)
    end
  end
# @lc code=end

