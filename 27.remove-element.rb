#
# @lc app=leetcode id=27 lang=ruby
#
# [27] Remove Element
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
test_nums = [3,2,2,3]
test_val =3

def remove_element(nums, val)
    return 0 if nums.length == 0

    index = 0

    while index <= nums.length do
        if nums[index] == val
            nums.delete_at(index)
        else
            index += 1
        end
    end

    return nums.length
end

p remove_element(test_nums, test_val)
# @lc code=end

