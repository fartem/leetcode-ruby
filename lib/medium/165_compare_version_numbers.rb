# frozen_string_literal: true

# https://leetcode.com/problems/compare-version-numbers/
# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  v1 = parts(version1)
  v2 = parts(version2)
  p = 0

  while p < v1.size && p < v2.size
    return 1 if v1[p] > v2[p]

    return -1 if v1[p] < v2[p]

    p += 1
  end

  return 1 if v1.size != p && !has_only_zeros(v1, p)

  return -1 if v2.size != p && !has_only_zeros(v2, p)

  0
end

private

# @param {String} version
# @return {Array}
def parts(version)
  parts = []
  version.split('.').each do |part|
    start = 0
    start += 1 while start < part.size - 1 && part[start] == '0'

    parts << part[start..].to_i
  end

  parts
end

# @param {Array} parts
# @param {Integer} p
# @return {Boolean}
def has_only_zeros(parts, p)
  while p < parts.size
    return false unless parts[p].zero?

    p += 1
  end

  true
end
