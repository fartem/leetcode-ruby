# frozen_string_literal: true

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  result = [[1]]
  (1...num_rows).step(1) do |i|
    row = (0..i).to_a
    row[0] = 1
    row[row.length - 1] = 1
    if i >= 2
      prev = result[i - 1]
      p = 1
      (0...prev.length - 1).step(1) do |j|
        row[p] = prev[j] + prev[j + 1]
        p += 1
      end
    end
    result << row
  end
  result
end
