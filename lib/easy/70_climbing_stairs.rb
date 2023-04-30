# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return 1 if n == 1

  n1 = 1
  n2 = 2
  (3..n).step(1) do
    temp = n1
    n1 = n2
    n2 += temp
  end
  n2
end
