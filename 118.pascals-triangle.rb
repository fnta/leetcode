#
# @lc app=leetcode id=118 lang=ruby
#
# [118] Pascal's Triangle
#

# @lc code=start
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows.zero?
  ans = [[1]]
  (1..num_rows-1).each do |i|
    prev = ans[-1]
    cur = (1..i-1).map { |i| prev[i-1]+prev[i] }
    cur.unshift 1
    cur << 1
    ans << cur
  end
  ans
end

require 'minitest/autorun'

class PascalsTriangleTest < Minitest::Test
  def test_generate
    assert_equal [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]], generate(5)
    assert_equal [[1]], generate(1)
  end
end