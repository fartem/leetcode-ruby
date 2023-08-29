# frozen_string_literal: true

# https://leetcode.com/problems/greatest-common-divisor-of-strings/
# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  f_l = str1.length
  s_l = str2.length
  m_l = [f_l, s_l].max
  (1..m_l).reverse_each do |i|
    next unless (f_l % i).zero? && (s_l % i).zero?

    f_s = str1[0, i]
    s_s = str2[0, i]

    next unless f_s == s_s

    return f_s if (str1[i, f_l] + f_s) == str1 && (str2[i, s_l] + s_s) == str2
  end

  ''
end
