# frozen_string_literal: true

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

end

def rob(node)

  def helper(node)
    return [0 , 0 ] unless  node

    left = helper(node.left)
    right = helper(node.right)

    not_rob = left.max + right.max
    rob = node.val + left[0] + right[0]
    [not_rob, rob]
  end

  helper(node).max

end

root = TreeNode.new(3)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.right = TreeNode.new(3)
root.right.right = TreeNode.new(1)

puts rob(root)