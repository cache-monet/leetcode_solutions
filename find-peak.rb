def find_peak_elem(nums)
  len = nums.size
  last = len
  mid = len / 2
  while mid < len
    return mid if mid.zero?
    if nums[mid] < nums[mid - 1]
      last = mid
      mid /= 2
    elsif mid < len - 1 && nums[mid] < nums[mid + 1]
      mid = (last + mid + 1) / 2
    else
      return mid
    end
  end
end

tests = [
  [1,2,3,4,5,6],
  [5,4,3,2,1],
  [1, 3, 5, 9, 1, 11, 2],
  [1,2,1,2,1],
  [1,3],
  [3,1],
  [5]
]

tests.each { |t| puts find_peak_elem(t) }
