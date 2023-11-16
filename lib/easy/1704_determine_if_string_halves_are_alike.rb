# frozen_string_literal: true

# https://leetcode.com/problems/determine-if-string-halves-are-alike/
# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  middle = s.length / 2
  chars = ::Set.new(%w[a e i o u A E I O U])
  vowels = 0
  (0...s.length).each { |i| vowels += i < middle ? 1 : -1 if chars.include?(s[i]) }

  vowels.zero?
end
