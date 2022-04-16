#
# @lc app=leetcode id=119 lang=ruby
#
# [119] Pascal's Triangle II
#

# @lc code=start
# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  result = []
  (row_index+1).times do |i|
    result.push([1]*(i+1))
  end
  (row_index+1).times do |i|
    i.times do |j|
      if j == 0
        result[i][j] = 1
      elsif i == j
        result[i][j] = 1
      else
        result[i][j] = result[i-1][j-1] + result[i-1][j]
      end
    end
  end
  p result
end

# @lc code=end

require 'minitest/autorun'

class PascalsTriangle2Test < Minitest::Test
  def test_get_row
    assert_equal [[1,3,3,1]], get_row(3)
    assert_equal [[1]], get_row(0)
    assert_equal [[1,1]], get_row(1)
  end
end