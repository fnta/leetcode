#
# @lc app=leetcode id=53 lang=ruby
#
# [53] Maximum Subarray
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max_sum = -1.0/0 # negative infinity
    dp = []
    nums.each_with_index do |num, i|
      dp[i] = dp[i-1] ? [num, num + dp[i-1]].max : num
      max_sum = [max_sum, dp[i]].max
    end
    max_sum  
end
# @lc code=end

