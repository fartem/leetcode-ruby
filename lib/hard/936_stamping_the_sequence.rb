# frozen_string_literal: false

# https://leetcode.com/problems/stamping-the-sequence/
# @param {String} stamp
# @param {String} target
# @return {Integer[]}
def moves_to_stamp(stamp, target)
  stamp_wc = '?' * stamp.size
  a =
    (10 * target.size).times.each_with_object([]) do |_j, ans|
      break ans unless (0..target.size - stamp.size).reduce(false) do |r, i|
        str = target[i, stamp.size]
        if !str.all_wild? && stamp.match_wild?(str)
          ans << i
          target[i, stamp.size] = stamp_wc

          true
        else
          r
        end
      end
    end

  target.all_wild? ? a.reverse : []
end

# String expansion
class String
  # Check is wild
  def wild? = eql?('?')

  # Check is match
  def match_wild?(b)
    return false unless size == b.size

    chars.zip(b.chars).all? { |cp| cp.first == cp.last || cp.any?(&:wild?) }
  end

  # Check is all wild
  def all_wild? = chars.all?(&:wild?)
end
