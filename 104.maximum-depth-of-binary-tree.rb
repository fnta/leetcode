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
test_root = [1,nil,2]

def max_depth(root)
  if !root.nil?
    ld = max_depth(root.left)
    rd = max_depth(root.right)
    1 + [ld, rd].max
  else
    0
  end
end

p max_depth(test_root)
# @lc code=end

