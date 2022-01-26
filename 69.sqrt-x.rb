#
# @lc app=leetcode id=69 lang=ruby
#
# [69] Sqrt(x)
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    (0..x).bsearch { |i| (i+1)**2 > x }
end
# @lc code=end

