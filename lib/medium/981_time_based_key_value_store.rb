# frozen_string_literal: true

# https://leetcode.com/problems/time-based-key-value-store/
class TimeMap
  # Init
  def initialize
    @keys = {}
  end

  # @param {String} key
  # @param {String} value
  # @param {Integer} timestamp
  # @return {Void}
  def set(key, value, timestamp)
    @keys[key] ||= []
    @keys[key] << [timestamp, value]
  end

  # @param {String} key
  # @param {Integer} timestamp
  # @return {Void}
  def get(key, timestamp)
    return '' unless @keys.key?(key) && timestamp >= @keys[key].first[0]

    l = 0
    r = @keys[key].size

    while l < r
      m = (l + r) / 2

      if @keys[key][m][0] <= timestamp
        l = m + 1
      else
        r = m
      end
    end

    r.zero? ? '' : @keys[key][r - 1][1]
  end
end
