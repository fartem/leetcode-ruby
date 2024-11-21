# frozen_string_literal: true

# https://leetcode.com/problems/string-compression/
# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  prev = chars[0]
  prev_count = 0
  chars_with_count = []
  chars.each do |char|
    if char == prev
      prev_count += 1
    else
      chars_with_count << prev
      prev_count.to_s.each_char { |c| chars_with_count << c } if prev_count > 1

      prev = char
      prev_count = 1
    end
  end

  chars_with_count << prev
  prev_count.to_s.each_char { |c| chars_with_count << c } if prev_count > 1

  (0...chars_with_count.size).each { |i| chars[i] = chars_with_count[i] }

  chars_with_count.size
end
