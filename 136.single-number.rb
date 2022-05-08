#
# @lc app=leetcode id=136 lang=ruby
#
# [136] Single Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  p nums.sort
  nums = nums.sort

  ans = 0
  (1...nums.size).each do |i|
    if nums[i-1] == nums[i]
      p nums[i-1]
    else
      p nums[i-1]
    end
  end
  ans
end
# @lc code=end

require 'minitest/autorun'

class SingleNumberTest < Minitest::Test
  def test_single_number
    test1 = [2,2,1]
    test2 = [4,1,2,1,2]
    test3 = [1]

    assert_equal 1, single_number(test1)
    assert_equal 4, single_number(test2)
    assert_equal 1, single_number(test3)
  end
end