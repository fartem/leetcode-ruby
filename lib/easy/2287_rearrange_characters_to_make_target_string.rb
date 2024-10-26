# frozen_string_literal: true

# https://leetcode.com/problems/rearrange-characters-to-make-target-string/
# @param {String} s
# @param {String} target
# @return {Integer}
def rearrange_characters(s, target)
  s_count = ::Array.new(26, 0)
  s.each_byte { |b| s_count[b - 97] += 1 }

  t_count = ::Array.new(26, 0)
  target.each_byte { |b| t_count[b - 97] += 1 }

  result = ::Float::INFINITY
  (0...t_count.length).each do |i|
    next if t_count[i].zero?

    return 0 if s_count[i].zero?

    result = [result, s_count[i] / t_count[i]].min
  end

  result
end
