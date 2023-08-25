# frozen_string_literal: true

# https://leetcode.com/problems/add-to-array-form-of-integer/
# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
  result = []
  k_l = (::Math.log10(k) + 1).to_i
  p = 0
  add = 0
  n = num.length
  while p < k_l && p < n
    k_num = k % 10
    n_num = num[n - p - 1]
    sum = k_num + n_num

    if sum > 9
      sum += add
      sum -= 10
      add = 1
    elsif add != 0
      sum += add
      if sum < 10
        add = 0
      else
        sum = 0
      end
    end

    result << sum
    k /= 10
    p += 1
  end

  if k_l > p
    (p...k_l).each do |_i|
      j = k % 10
      k /= 10

      unless add.zero?
        j += add

        if j > 9
          j -= 10
        else
          add = 0
        end
      end

      result << j
    end
  end

  if p < n
    ((p + 1)..n).each do |i|
      j = num[n - i]

      unless add.zero?
        j += add

        if j > 9
          j -= 10
        else
          add = 0
        end
      end

      result << j
    end
  end

  result << 1 unless add.zero?

  result.reverse
end
