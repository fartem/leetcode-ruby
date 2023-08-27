# frozen_string_literal: true

# https://leetcode.com/problems/ransom-note/
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  letters = ::Hash.new(0)
  (0..magazine.length).each do |i|
    letters[magazine[i]] += 1
  end
  (0..ransom_note.length).each do |i|
    curr = ransom_note[i]

    return false if letters[curr].zero?

    letters[curr] -= 1
  end

  true
end
