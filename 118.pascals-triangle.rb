#
# @lc app=leetcode id=118 lang=ruby
#
# [118] Pascal's Triangle
#

# @lc code=start
# @param {Integer} num_rows
# @return {Integer[][]}
# https://github.com/ACEMerlin/leetcode-ruby/blob/master/118.pascals-triangle.rb
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

# https://www.youtube.com/watch?v=29vTra_8mSA
def generate(num_rows)
  result = []
  num_rows.times do |i|
    result.push([i]*(i+1))
  end
  num_rows.times do |i|
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
  return result
end

require 'minitest/autorun'

class PascalsTriangleTest < Minitest::Test
  def test_generate
    assert_equal [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]], generate(5)
    assert_equal [[1]], generate(1)
  end
end