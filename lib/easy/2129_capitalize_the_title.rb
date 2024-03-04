# frozen_string_literal: true

# https://leetcode.com/problems/capitalize-the-title/
# @param {String} title
# @return {String}
def capitalize_title(title)
  title.split.map do |word|
    next word.downcase if word.size <= 2

    word.capitalize
  end.join(' ')
end
