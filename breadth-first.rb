# Breath First or Level Order tree traversal
Node = Struct.new(:value, :left, :right)

def level_order(root)
  return if root.nil?
  q = Queue.new
  q << root
  until q.empty? do
    current_node = q.pop
    puts current_node.value
    q << current_node.left unless current_node.left.nil?
    q << current_node.right unless current_node.right.nil?    
  end
end

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

level_order root
