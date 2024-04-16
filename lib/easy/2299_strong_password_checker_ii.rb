# frozen_string_literal: true

# https://leetcode.com/problems/strong-password-checker-ii/
# @param {String} password
# @return {Boolean}
def strong_password_checker_ii(password)
  return false if password.length < 8

  lower = 0
  upper = 0
  digit = 0
  special = 0
  last = '['

  password.each_char do |letter|
    return false if letter == last

    last = letter

    if letter.match?(/\d/)
      digit += 1
    elsif '!@\#$%^&*()-+'.include?(letter)
      special += 1
    elsif letter.match?(/[[:upper:]]/)
      upper += 1
    elsif letter.match?(/[[:lower:]]/)
      lower += 1
    end
  end

  lower.positive? && upper.positive? && special.positive? && digit.positive?
end
