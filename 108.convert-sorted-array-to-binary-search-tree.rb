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
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

t = TreeNode.new(3)
p t

#def sorted_array_to_bst(nums)
#  nums.length
#end
# @lc code=end

