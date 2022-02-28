#
# @lc app=leetcode id=69 lang=ruby
#
# [69] Sqrt(x)
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
test_x = 9

def my_sqrt(x)
    (0..x).bsearch { |i| (i+1)**2 > x }
end

p my_sqrt(test_x)
# @lc code=end

