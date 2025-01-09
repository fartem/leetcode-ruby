# frozen_string_literal: true

# https://leetcode.com/problems/max-sum-of-rectangle-no-larger-than-k/
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def max_sum_submatrix(matrix, k)
  m = matrix.length
  n = matrix[0].length

  result = -::Float::INFINITY

  (0...n).each do |start_col|
    sum_row = ::Array.new(m, 0)

    (start_col...n).each do |last_col|
      sum = 0

      accum_sums = [0]
      (0...m).each do |last_row|
        sum += (sum_row[last_row] += matrix[last_row][last_col])

        excess = accum_sums.bsearch { |x| x >= sum - k }

        result = [result, sum - excess].max unless excess.nil?

        idx = accum_sums.bsearch_index { |x| x >= sum }

        accum_sums.insert(idx || (last_row + 1), sum)
      end
    end
  end

  result
end
