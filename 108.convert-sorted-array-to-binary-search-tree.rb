#
# @lc app=leetcode id=108 lang=ruby
#
# [108] Convert Sorted Array to Binary Search Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
test = [-10,-3,0,5,9]

def sorted_array_to_bst(nums)
  nums.length

  mid = nums.length/2
  root = nums[mid]
end

p sorted_array_to_bst(test)
# @lc code=end

