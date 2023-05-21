# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  return false if n.zero?

  [2, 3, 5].each do |div|
    n /= div while (n % div).zero?
  end

  n == 1
end
