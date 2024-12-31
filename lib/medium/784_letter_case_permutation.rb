# frozen_string_literal: true

# https://leetcode.com/problems/letter-case-permutation/

# @param {String} s
# @return {String[]}
def letter_case_permutation(s)
  result = []
  find_permutations(s.chars, 0, result)

  result
end

private

# @param {Character[]} arr
# @param {Integer} index
# @param {String[]} result
# @param {Void}
def find_permutations(arr, index, result)
  if index == arr.size
    result << arr.join

    return
  end

  if arr[index] =~ /[A-Za-z]/
    arr[index] = arr[index].downcase
    find_permutations(arr, index + 1, result)

    arr[index] = arr[index].upcase
  end

  find_permutations(arr, index + 1, result)
end
