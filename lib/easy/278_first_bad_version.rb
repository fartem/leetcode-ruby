# frozen_string_literal: true

# https://leetcode.com/problems/first-bad-version/
# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n
  while left < right
    middle = left + (right - left) / 2
    if is_bad_version(middle)
      right = middle
    else
      left = middle + 1
    end
  end

  left
end

$b_version = 0

# @param {Integer} version
# @return {boolean} whether the version is bad
def is_bad_version(version)
  version == $b_version
end
