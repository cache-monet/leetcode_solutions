# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  dp = Hash.new
  n = nums.size
  majority_elem = 0
  majority_count = 0
  nums.each do |x|
    dp[x] = 0 unless dp[x]
    dp[x] += 1
    if dp[x] > majority_count
      majority_elem = x
      majority_count = dp[x]
    end
    return x if dp[x] > (n + 1)/ 2
  end
  puts dp
  majority_elem
end


test = [2,2,1,1,1,2,2]

puts majority_element(test)