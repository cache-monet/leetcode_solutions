# A = [...]
# len = 

def get_height(arr, len)
  # return len if len == 3 # like stuff
  max = 1;
  h = 0;
  h = recursive_height(0, h, arr, len)
  puts h
end

def recursive_height (root, h, arr, len)
  h += 1
  lc = root + 1
  rc = root + 2
  return h if root>= len
  
  # A[lc] != -1
  lh =  arr[lc] > 0 ? recursive_height(arr[lc], h, arr, len) : h
  rh = arr[rc] > 0 ? recursive_height(arr[rc], h, arr, len) : h
    
  h = lh > rh ? lh : rh
  return h

end

test = [1, 3, -1, 5, -1, -1]

get_height(test, 3)
# A = [77, 3, 6, 22, -1, -1, -8, ]