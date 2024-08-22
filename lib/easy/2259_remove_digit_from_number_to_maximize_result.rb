# rubocop:disable Style/FrozenStringLiteralComment

# https://leetcode.com/problems/remove-digit-from-number-to-maximize-result/
# @param {String} number
# @param {Character} digit
# @return {String}
def remove_digit(number, digit)
  result = nil
  (0...number.length).each do |i|
    next unless number[i] == digit

    tmp = number.clone
    tmp[i] = ''
    result = tmp if result.nil?
    result = [result, tmp].max
  end

  result
end

# rubocop:enable Style/FrozenStringLiteralComment
