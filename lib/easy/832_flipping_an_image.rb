# frozen_string_literal: true

# https://leetcode.com/problems/flipping-an-image/
# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
  c = image[0].length
  image.each do |row|
    (0...(c + 1) / 2).step(1) do |i|
      temp = row[i] ^ 1
      index = c - i - 1
      row[i] = row[index] ^ 1
      row[index] = temp
    end
  end

  image
end
