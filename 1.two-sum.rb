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
    hash = {}
    (0..nums.length-1).each do |i|
        hash.store(nums[i], i)
    end
    (0..nums.length-1).each do |i|
        complement = target - nums[i]
        return [i, hash.fetch(complement)] if hash.has_key?(complement) && hash.fetch(complement) != i
    end
end
# @lc code=end
