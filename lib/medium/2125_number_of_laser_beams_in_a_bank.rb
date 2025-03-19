# frozen_string_literal: true

# https://leetcode.com/problems/number-of-laser-beams-in-a-bank/
# @param {String[]} bank
# @return {Integer}
def number_of_beams(bank)
  lasers = []

  bank.each do |b|
    lasers_at_b = b.count('1')

    lasers << lasers_at_b if lasers_at_b.positive?
  end

  result = 0

  (1...lasers.size).each do |i|
    result += lasers[i - 1] * lasers[i]
  end

  result
end
