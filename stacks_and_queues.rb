# Last element in is first out (LIFO)
class MyStack
  def initialize
    @array = []
  end
  def push(element)
    new_array = [element]
    @array = new_array + @array
  end
  def pop
    el = @array[0]
    @array = @array[1..@array.length]
    el
  end
  def print
    p @array
  end
end

mystack = MyStack.new
mystack.push 1
mystack.push 2
mystack.push 3
mystack.push 4
mystack.print
puts mystack.pop
puts mystack.pop
mystack.print

# First element in is first out (FIFO)
class MyQueue
  def initialize
    @array = []    
  end
  def enqueue(element)
    @array = @array + [element]
  end
  def dequeue
    el = @array.first
    @array = @array.drop(1)
    el
  end
  def print
    p @array
  end
end

myqueue = MyQueue.new
myqueue.enqueue 1
myqueue.enqueue 2
myqueue.enqueue 3
myqueue.enqueue 4
myqueue.print
puts myqueue.dequeue
puts myqueue.dequeue
myqueue.print
