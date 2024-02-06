# frozen_string_literal: true

# https://leetcode.com/problems/ransom-note/
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  letters = magazine.chars.tally
  ransom_note.each_char do |c|
    return false if letters[c].nil? || letters[c].zero?

    letters[c] -= 1
  end

  true
end
