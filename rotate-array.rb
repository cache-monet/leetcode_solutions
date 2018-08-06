# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  start = pos = 0
  prev, cur = nums[0], 0
  len = nums.length
  k %= len
  return nums if k == 0

  for i in 0...len do
    if pos == start && i != 0
      start += 1
      pos = start
      prev = nums[pos]
    end

    pos = (pos + k) % len
    cur = nums[pos]
    nums[pos] = prev
    prev = cur
  end
  nums
end

def rotate_2(nums, k)
  n = nums.length
  k %= n
  return nums if k == 0
  mid = n/2
  for i in 0...mid do
    j = n - i - 1
    nums[i], nums[j] = nums[j], nums[i]
  end
  mid = k / 2
  for i in 0...mid do
    j = k - i - 1
    nums[i], nums[j] = nums[j], nums[i]
  end
  nk = n-k
  mid = nk / 2 
  for i in 0...mid do
    l = k+i
    j = n-i-1
    nums[l], nums[j] = nums[j], nums[l]
  end
  nums
end

tests =[
 [1,2,3,4,5,6],
 [1,2,3,4,5],
 [1,2,3,4]
]