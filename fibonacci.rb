def fibs (n)
  arr = [0, 1]
  n -= 2
  n.times do |i|
    arr << arr[-2] + arr[-1]
    n -= 1
  end
  arr
end
  
p fibs 15

def fibs_rec (n)
  n <= 2 ? 1 : fibs_rec(n-1) + fibs_rec(n-2)
end
  
p (0..10).map{|x| fibs_rec x}

