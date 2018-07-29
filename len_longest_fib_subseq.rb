# @param {Integer[]} a
# @return {Integer}
def len_longest_fib_subseq(a)
  return 0 if a.empty?
  dp = {}
  max = 0
  a.each_with_index do |x, j|
    dp[x] = {}
    a.drop(j+1).each_with_index do |y, k|
      z = y - x
      zx = dg.dig(z, x)
      size = zx ? zx + 1 : 2
      dp[x][y] = size 
      max = size if size > max
    end
  end
  max == 2 : 0 : max
end

tests = [
  [1,2,3,5,7],
  [1,3,7,11,12,14,18],
  [2,3,5,3,5,7,12],
  [2,3,5,7,12]
]

tests.each { |t| puts len_longest_fib_subseq(t) }
