# frozen_string_literal: true

# https://leetcode.com/problems/find-smallest-letter-greater-than-target/
# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  letters.each do |letter|
    return letter if letter > target
  end

  letters.first
end
