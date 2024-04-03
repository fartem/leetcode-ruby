# rubocop:disable Style/FrozenStringLiteralComment, Style/DisableCopsWithinSourceCodeDirective

# https://leetcode.com/problems/calculate-digit-sum-of-a-string/
# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
  while s.length > k
    arr = []
    i = 0
    while i < s.length
      sum = 0
      s[i...(i + k)].each_char { |c| sum += c.to_i }
      arr << sum.to_s
      i += k
    end

    s.replace(arr.join)
  end

  s
end

# rubocop:enable Style/FrozenStringLiteralComment, Style/DisableCopsWithinSourceCodeDirective
