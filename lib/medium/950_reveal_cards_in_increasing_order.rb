# frozen_string_literal: true

# https://leetcode.com/problems/reveal-cards-in-increasing-order/
# @param {Integer[]} deck
# @return {Integer[]}
def deck_revealed_increasing(deck)
  length = deck.size
  indices = (0...length).to_a
  deck.sort!
  result = ::Array.new(length)

  deck.each do |card|
    result[indices.shift] = card
    indices << indices.shift unless indices.empty?
  end

  result
end
