# @lc app=leetcode id=70 lang=ruby
#
# [70] Climbing Stairs
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    Hash.new { |h, k| h[k] = h[k-1] + h[k-2] }.merge({1=>1, 2=>2})[n]
end
# @lc code=end

