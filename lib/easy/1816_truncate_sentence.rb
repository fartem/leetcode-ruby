# frozen_string_literal: true

# https://leetcode.com/problems/truncate-sentence/
# @param {String} s
# @param {Integer} k
# @return {String}
def truncate_sentence(s, k)
  index = 0
  spaces = 0
  (0...s.length).each do |i|
    next unless s[i] == ' '

    spaces += 1

    next unless spaces == k

    index = i

    break
  end

  index.zero? ? s : s[0, index]
end
