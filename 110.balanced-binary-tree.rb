#
# @lc app=leetcode id=110 lang=ruby
#
# [110] Balanced Binary Tree
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
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

tn1 = TreeNode.new(3)
tn2 = TreeNode.new(9)
tn3 = TreeNode.new(20)
tn4 = TreeNode.new(15)
tn5 = TreeNode.new(7)
tn1.left = tn2
tn1.right = tn3
tn3.left = tn4
tn3.right = tn5

def is_balanced(root)
  if root == nil
    return 0
  end

  left = is_balanced(root.left)
  right = is_balanced(root.right)
  if(left - right).abs > 1 || left < 0 || right < 0
    return -1
  end
  return [left, right].max + 1
end

def depth(root)
end

p is_balanced(tn1)
# @lc code=end

