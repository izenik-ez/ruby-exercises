def binary_search (element, array)
  return nil if array.empty?
  
  middle = array.length / 2
  if element < array[middle]
    binary_search(element, array.take(middle))
  elsif element > array[middle]
    binary_search(element, array.drop(middle+1))
  else
    return array[middle]
  end
end

arr = [11,23,8,14,30,9,6,17,22,28,25,15,7,10,19].sort
p binary_search 35, arr
p binary_search 22, arr
