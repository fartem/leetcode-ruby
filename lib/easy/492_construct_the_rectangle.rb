# frozen_string_literal: true

# https://leetcode.com/problems/construct-the-rectangle/
# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  sqrt = ::Math.sqrt(area).to_i

  while sqrt.positive?
    return [area / sqrt, sqrt] if (area % sqrt).zero?

    sqrt -= 1
  end
end
