# frozen_string_literal: true

# https://leetcode.com/problems/isomorphic-strings/
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  replaces = {}
  replace_values = ::Set.new

  (0..s.length).each do |i|
    curr_s = s[i]
    curr_t = t[i]

    if replaces[curr_s].nil?
      return false if replace_values.include?(curr_t)

      replaces[curr_s] = curr_t
      replace_values << curr_t
    else
      replacement = replaces[curr_s]

      return false if curr_t != replacement
    end
  end

  true
end
