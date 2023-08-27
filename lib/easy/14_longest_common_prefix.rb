# frozen_string_literal: true

# https://leetcode.com/problems/longest-common-prefix/
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty? || strs.first.empty?

  first = strs.first
  result = ''
  (0...first.length).each do |i|
    ch = first[i]
    eq = true
    strs.drop(1).each do |str|
      unless str.length >= i && str[i] == ch
        eq = false
        break
      end
    end

    result += ch if eq

    break unless eq
  end

  result
end
