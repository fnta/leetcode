#
# @lc app=leetcode id=26 lang=ruby
#
# [26] Remove Duplicates from Sorted Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
test = [0,0,1,1,1,2,2,3,3,4]

def remove_duplicates(nums)
    if(nums.length == 0 || nums.length == 1)
        return nums.length;
    end

    index = 0;
    1.step do |i|
        if(nums[i-1] != nums[i])
            index = index + 1;
            nums[index] = nums[i];
        end
        break if i >= nums.length-1
    end
    p nums
    return index + 1;
end

p remove_duplicates(test)
# @lc code=end