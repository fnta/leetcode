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

t = TreeNode.new(3)
tl = TreeNode.new(9)
tr = TreeNode.new(20)
trl = TreeNode.new(15)
trr = TreeNode.new(7)

p tr

def is_balanced(root)
    
end
# @lc code=end

