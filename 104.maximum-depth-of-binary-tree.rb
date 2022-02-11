#
# @lc app=leetcode id=104 lang=ruby
#
# [104] Maximum Depth of Binary Tree
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
# @param {TreeNode} root
# @return {Integer}
# t - top, l - left, r - right
t = TreeNode.new(3)
tl = TreeNode.new(9)
tr = TreeNode.new(20)
trl = TreeNode.new(15)
trr = TreeNode.new(7)

t.left = tl
t.right = tr
  tr.left = trl
  tr.right = trr

def max_depth(root)
    
end
# @lc code=end

