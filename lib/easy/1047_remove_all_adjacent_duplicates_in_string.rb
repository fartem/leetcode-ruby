# frozen_string_literal: true

# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
# @param {String} s
# @return {String}
def remove_duplicates_all(s)
  result = []
  (0..s.length).each do |i|
    c = s[i]
    n = result.length - 1
    if n >= 0 && result[n] == c
      result.delete_at(n)
    else
      result << c
    end
  end

  result.join
end
