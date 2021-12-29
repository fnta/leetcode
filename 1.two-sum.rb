#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
　　(0..nums.length-1).each do |i|
        (i+1..nums.length-1).each do |j|
            return [i, j] if nums[i] + nums[j] == target
        end
    end
end
# @lc code=end

