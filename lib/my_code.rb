# Your Code Here
# def my_own_map(array)
#   array.map {|ele| ele * -1 }
  
#   # dune = array
#   # dune.map{|ele| ele}
  
#   # array.map {|ele| ele * 2}
  
#   # array.map {|ele| ele * ele }
# end 

# def my_own_reduce(array, starting_point = 0)
#   count = starting_point
#   array.each do |ele|
#     count += ele 
#   end 
#   count
# end 

def map(array)
  new= []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1 
  end 
  new
end 

def reduce(array, sv = nil)
  if sv 
    sum  = sv
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end 
  while i < array.length
  sum = yield(sum, array[i])
  i += 1 
end 
sum 
end 