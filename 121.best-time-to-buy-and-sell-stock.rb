#
# @lc app=leetcode id=121 lang=ruby
#
# [121] Best Time to Buy and Sell Stock
#

# @lc code=start
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    
end
# @lc code=end
require 'minitest/autorun'

class MaxProfit < Minitest::Test
  def test_max_profit
    assert_equal 5, max_profit(7,1,5,3,6,4)
    assert_equal 0, max_profit(7,6,4,3,1)
  end
end

