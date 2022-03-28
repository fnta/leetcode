#
# @lc app=leetcode id=111 lang=ruby
#
# [111] Minimum Depth of Binary Tree
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
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def min_depth(root)
  if root == nil
    return 0
  elsif root.left == nil || root.right == nil
    return [min_depth(root.left), min_depth(root.right)].max + 1
  else
    return [min_depth(root.left), min_depth(root.right)].min + 1
  end
end

require 'minitest/autorun'

class MinDepthTest < Minitest::Test
  def test_min_depth
    tn1 = TreeNode.new(3)
    tn2 = TreeNode.new(9)
    tn3 = TreeNode.new(20)
    tn4 = TreeNode.new(15)
    tn5 = TreeNode.new(7)
    tn1.left = tn2
    tn1.right = tn3
    tn3.left = tn4
    tn3.right = tn5
    assert_equal 2, min_depth(tn1)
  end
end
# @lc code=end

