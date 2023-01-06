#
Node = Struct.new(:value, :left, :right)

top = Node.new(5, nil, nil)

def add_node (top, node)
  if top.value > node.value
    if top.left.nil?
      top.left = node
    elsif
      add_node top.left, node
    end
  elsif
    if top.right.nil?
      top.right = node
    elsif
      add_node top.right, node
    end    
  end
end

def tree_to_s (top, indent=0, mark="")  
  return if top.nil?
  puts (" " * indent) + "#{mark} #{top.value}"
  
  tree_to_s top.left, indent+1, "/"
  tree_to_s top.right, indent+1, "\\"
end


add_node top, Node.new(4, nil,nil)
add_node top, Node.new(2, nil, nil)
add_node top, Node.new(3, nil, nil)
add_node top, Node.new(27, nil, nil)
add_node top, Node.new(17, nil, nil)
add_node top, Node.new(1, nil, nil)

tree_to_s top
