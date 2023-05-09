# frozen_string_literal: true

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.digits(2).to_s.split('').select { |c| c == '1' }.map(&:to_i).sum
end
