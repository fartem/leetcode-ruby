# frozen_string_literal: true

# https://leetcode.com/problems/check-if-a-string-contains-all-binary-codes-of-size-k/
# @param {String} s
# @param {Integer} k
# @return {Boolean}
def has_all_codes(s, k)
  need = 1 << k
  exists = ::Set.new

  (k..s.size).each do |i|
    str = s[i - k...i]

    next if exists.include?(str)

    exists << str
    need -= 1

    return true if need.zero?
  end

  false
end
