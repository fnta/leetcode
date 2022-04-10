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
    
end
# @lc code=end

require 'minitest/autorun'

class PascalsTriangle2Test < Minitest::Test
  def test_get_row
    assert_equal [[1,3,3,1]], get_row(3)
    assert_equal [[1]], get_row(0)
  end
end