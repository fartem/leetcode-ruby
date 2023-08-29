# frozen_string_literal: true

# https://leetcode.com/problems/most-common-word/
# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  ban = ::Set.new(banned)
  most_common_word = nil
  word = []
  counter = 0
  words_with_count = {}
  in_lower_case = paragraph.downcase
  (0...paragraph.length).each do |i|
    c = in_lower_case[i]
    if is_letter?(c)
      word << c
    else
      candidate = word.join.strip
      word.clear

      if !candidate.empty? && !ban.include?(candidate)
        count = words_with_count.fetch(candidate, 1)
        words_with_count[candidate] = count + 1
        if counter < count
          counter = count
          most_common_word = candidate
        end
      end
    end
  end

  most_common_word || word.join
end

# @param {String} s
# @return {Boolean}
def is_letter?(s)
  s =~ /[A-Za-z]/
end
