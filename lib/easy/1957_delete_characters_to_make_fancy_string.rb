# frozen_string_literal: true

# https://leetcode.com/problems/delete-characters-to-make-fancy-string/description/
# @param {String} s
# @return {String}
def make_fancy_string(s)
  result = []
  prev = s[0]
  result << prev
  count = 1
  (1...s.length).each do |i|
    c = s[i]
    if c == prev
      count += 1
    else
      count = 1
      prev = c
    end

    result << c if count < 3
  end

  result.join
end
