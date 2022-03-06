#
# @lc app=leetcode id=101 lang=ruby
#
# [101] Symmetric Tree
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
# @return {Boolean}
test_root = [1,2,2,3,4,4,3]

def is_symmetric(root)
    return true if root.nil?

    compare_func(root.left, root.right)
end

def compare_func(p,q)
    return true if p.nil? && q.nil?

    if p && q && (p.val == q.val)
        compare_func(p.left,q.right) && compare_func(p.right,q.left)
    else
        false
    end
end

p is_symmetric(test_root)
# @lc code=end

