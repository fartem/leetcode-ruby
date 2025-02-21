# frozen_string_literal: true

# https://leetcode.com/problems/count-submatrices-with-all-ones/
# @param {Integer[][]} mat
# @return {Integer}
def num_submat(mat)
  n = mat[0].length
  result = 0
  h = ::Array.new(n, 0)

  mat.each do |sub|
    f = [-1]
    s = [0]

    n.times { |j| h[j] = sub[j].zero? ? 0 : h[j] + 1 }

    n.times do |j|
      while f.first >= 0 && h[f.first] >= h[j]
        f.shift
        s.shift
      end

      sum = h[j] * (j - f.first) + s.first

      f.unshift(j)
      s.unshift(sum)

      result += sum
    end
  end

  result
end
