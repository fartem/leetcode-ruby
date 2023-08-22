# frozen_string_literal: true

# https://leetcode.com/problems/uncommon-words-from-two-sentences/
# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  uniq_count = 0
  uniq = ::Set.new
  duplicates = ::Set.new

  s1.split.each do |word|
    if uniq.include?(word)
      uniq.delete(word)
      duplicates << word
      uniq_count -= 1
    elsif !duplicates.include?(word)
      uniq_count += 1
      uniq << word
    end
  end

  s2.split.each do |word|
    if uniq.include?(word)
      uniq.delete(word)
      duplicates << word
      uniq_count -= 1
    elsif !duplicates.include?(word)
      uniq_count += 1
      uniq << word
    end
  end

  result = ::Array.new(uniq.length)
  uniq.each do |word|
    result[result.length - uniq_count] = word
    uniq_count -= 1
  end

  result
end
