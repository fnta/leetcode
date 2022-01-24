#
# @lc app=leetcode id=69 lang=ruby
#
# [69] Sqrt(x)
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    n = x
    n = (n+x/n)/2 while n*n > x
    n      
end
# @lc code=end

