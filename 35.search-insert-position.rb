#
# @lc app=leetcode id=35 lang=ruby
#
# [35] Search Insert Position
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    if nums.include?(target)
        return nums.index(target)
    end

    for i in 0..nums.size-2
        if target > nums[i] && target < nums[i+1]
            return i+1
        end
    end

    return 0 if target < nums.min
    return nums.size if target > nums.max
end
# @lc code=end

