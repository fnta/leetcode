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

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def sorted_array_to_bst(nums, lo = 0, hi = nums.length-1)
  return if lo > hi
  mid = (lo + hi + 1) / 2
  TreeNode.new(nums[mid]).tap do |root|
    root.left = sorted_array_to_bst(nums, lo, mid-1)
    root.right = sorted_array_to_bst(nums, mid+1, hi)
  end
end

p sorted_array_to_bst(test)
#def sorted_array_to_bst(nums)
#  nums.length
#end
# @lc code=end

