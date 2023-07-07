# frozen_string_literal: true

# @param {String} s
# @return {String}
def reverse_words(s)
  result = []
  s.split.each do |word|
    result << word.reverse
  end

  result.join(' ')
end
