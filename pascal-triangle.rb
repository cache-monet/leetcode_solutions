# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  pascal = Array.new(num_rows)
  for i in 0...num_rows do
    pascal[i] = Array.new(i+1)
    pascal[i][0] = pascal[i][i] = 1
    for j in 1...i
      pascal[i][j] = pascal[i-1][j-1] + pascal[i-1][j]
    end
  end
  pascal.each do |x|
    # puts x.is_a? Array
    puts x.join(" ")
  end
  pascal
end

generate(4)