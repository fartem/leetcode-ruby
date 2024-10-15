# frozen_string_literal: true

# https://leetcode.com/problems/bulls-and-cows/
# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  bulls = 0
  cows = 0
  map = ::Hash.new(0)

  secret.chars.each_with_index do |s, i|
    if s == guess[i]
      bulls += 1
    else
      map[s] += 1
    end
  end

  guess.chars.each_with_index do |g, i|
    if g != secret[i] && map[g].positive?
      cows += 1
      map[g] -= 1
    end
  end

  "#{bulls}A#{cows}B"
end
