# @param {Integer[]} nums
# @return {Integer[]}
# additional space
def find_duplicates(nums)
  dp, dups= {}, []
  nums.each do |x|
    dups.push(x) if dp[x] == 1
    dp[x] = 1 
  end
 dups
end

tests = [
  [1,2,3],
  [1,2,3,4,1,11],
  [1,3,2,3,4,2]
]

# find_duplicates(tests[0])
tests.each { |t| puts find_duplicates(t).join(' ') }