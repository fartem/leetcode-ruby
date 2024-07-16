# frozen_string_literal: false

# https://leetcode.com/problems/group-anagrams/
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  values = {}
  strs.each do |str|
    key = ::Array.new(str.length, '')
    (0...str.length).each { |i| key[i] = str[i] }

    k = key.sort.join

    if values.key?(k)
      values[k] << str
    else
      values[k] = [str]
    end
  end

  values.values
end
