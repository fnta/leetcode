#
# @lc app=leetcode id=121 lang=ruby
#
# [121] Best Time to Buy and Sell Stock
#

# @lc code=start
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  ans = sum = 0
  (1...prices.size).each do |i|
    sum += prices[i]-prices[i-1]
    ans = [ans, sum].max
    sum = [sum, 0].max
  end
  ans
end
# @lc code=end
require 'minitest/autorun'

class MaxProfit < Minitest::Test
  def test_max_profit
    test1 = [7,1,5,3,6,4]
    test2 = [7,6,4,3,1]

    assert_equal 5, max_profit(test1)
    assert_equal 0, max_profit(test2)
  end
end

