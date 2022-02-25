#
# @lc app=leetcode id=53 lang=ruby
#
# [53] Maximum Subarray
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
test_nums = [-2,1,-3,4,-1,2,1,-5,4]

def max_sub_array(nums)
    max_sum = -1.0/0 # negative infinity
    dp = []
    nums.each_with_index do |num, i|
      dp[i] = dp[i-1] ? [num, num + dp[i-1]].max : num
      max_sum = [max_sum, dp[i]].max
    end
    max_sum  
end

p max_sub_array(test_nums)
# @lc code=end

