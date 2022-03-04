#
# @lc app=leetcode id=94 lang=ruby
#
# [94] Binary Tree Inorder Traversal
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
# @return {Integer[]}
test_root = [1,null,2,3]

def inorder_traversal(root)
    return [] unless root
     
    arr = []
    arr += inorder_traversal(root.left)
    arr << root.val		# 値は左右を掘る間に保存
    arr += inorder_traversal(root.right)
    arr   
end

p inorder_traversal(test_root)
# @lc code=end

