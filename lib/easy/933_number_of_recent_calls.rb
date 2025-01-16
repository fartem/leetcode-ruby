# frozen_string_literal: true

# https://leetcode.com/problems/number-of-recent-calls/
class RecentCounter
  # Init
  def initialize
    @requests = []
  end

  # @param {Integer} t
  # @return {Integer}
  def ping(t)
    @requests << t
    @requests.shift while @requests.first < t - 3000

    @requests.length
  end
end
