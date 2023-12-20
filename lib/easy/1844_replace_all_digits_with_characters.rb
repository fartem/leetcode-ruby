# frozen_string_literal: true

# https://leetcode.com/problems/replace-all-digits-with-characters/
# @param {String} s
# @return {String}
def replace_digits(s)
  chars = s.split('')
  (1...chars.length).step(2).each do |i|
    chars[i] = (chars[i - 1].ord + chars[i].to_i).chr
  end

  chars.join
end
