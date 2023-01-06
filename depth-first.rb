# Preorder
#  1. visit root
#  2. visit left sub-tree
#  3. visit right sub-tree

# Inorder
#  1. visit left sub-tree
#  2. visit root
#  3. visit right sub-tree

# Postorder
#  1. visit left sub-tree
#  2. visit right sub-tree
#  3. visit root
Node = Struct.new(:value, :left, :right)

root = Node.new("F", nil, nil)
d = Node.new("D", nil, nil)

b = Node.new("B", nil, nil)
e = Node.new("E", nil, nil)
a = Node.new("A", nil, nil)
c = Node.new("C", nil, nil)

j = Node.new("J", nil, nil)
g = Node.new("G", nil, nil)
k = Node.new("K", nil, nil)
i = Node.new("I", nil, nil)
h = Node.new("H", nil, nil)

b.left = a
b.right = c

d.left = b
d.right = e

root.left = d

i.left = h

g.right = i

j.left = g
j.right = k

root.right = j

def preorder(root)
  return if root.nil?
  print "#{root.value} "
  preorder root.left
  preorder root.right
end

def inorder(root)
  return if root.nil?
  inorder root.left
  print "#{root.value} "
  inorder root.right
end

def postorder (root)
  return if root.nil?
  postorder root.left
  postorder root.right
  print "#{root.value} "
end

preorder root
puts

inorder root
puts

postorder root
puts
