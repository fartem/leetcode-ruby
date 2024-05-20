# frozen_string_literal: true

# https://leetcode.com/problems/remove-letter-to-equalize-frequency/
# @param {String} word
# @return {Boolean}
def equal_frequency(word)
  freq = ::Hash.new(0)
  word.each_char { |c| freq[c] += 1 }

  freq.each_key do |key|
    temp_map = freq.clone
    temp_map[key] -= 1

    temp_map.delete(key) if temp_map[key].zero?

    return true if temp_map.values.uniq.length == 1
  end

  false
end
