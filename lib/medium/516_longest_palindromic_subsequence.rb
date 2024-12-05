# frozen_string_literal: true

# https://leetcode.com/problems/longest-palindromic-subsequence/
# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s) = calculate_length(s, 0, s.size - 1, {})

private

# @param {String} s
# @param {Integer} st
# @param {Integer} nd
# @param {Map<Integer, Integer>} subs
# @return {Integer}
def calculate_length(s, st, nd, subs)
  return 0 if st > nd

  return 1 if st == nd

  s_ch = s[st]
  e_ch = s[nd]
  key = "#{st}/#{nd}"
  unless subs.include?(key)
    curr_length =
      if s_ch == e_ch
        calculate_length(s, st + 1, nd - 1, subs) + 2
      else
        [
          calculate_length(s, st + 1, nd, subs),
          calculate_length(s, st, nd - 1, subs)
        ].max
      end

    subs[key] = curr_length
  end

  subs[key]
end
