# frozen_string_literal: true

# https://leetcode.com/problems/repeated-dna-sequences/
# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  return [] if s.size <= 10

  seq = ::Set.new
  rep = ::Set.new
  (0...(s.size - 9)).each do |i|
    sub = s[i...i + 10]

    if seq.include?(sub)
      rep << sub
    else
      seq << sub
    end
  end

  rep.to_a
end
