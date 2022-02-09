#
# @lc app=leetcode id=100 lang=ruby
#
# [100] Same Tree
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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return false if (p.nil? || q.nil? || p.val != q.val)
    return is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end
# @lc code=end

