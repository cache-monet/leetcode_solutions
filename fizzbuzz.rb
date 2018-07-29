# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  nstr = Array.new(n, "")
  for i in 1..n do 
    nstr[i-1] += 'Fizz' if i % 3 == 0
    nstr[i-1] += 'Buzz' if i % 5 == 0
    nstr[i-1] += i.to_s if nstr[i-1].empty?
  end
  nstr
end

tests = [1, 3, 8, 16]
tests.each { |t| puts fizz_buzz(t).join(' ')  }
