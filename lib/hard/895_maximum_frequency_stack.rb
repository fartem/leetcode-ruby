# frozen_string_literal: true

# https://leetcode.com/problems/maximum-frequency-stack/
class FreqStack
  # Init
  def initialize
    @freq = {}
    @group = {}
    @max_freq = 0
  end

  # @param {Integer} val
  # @return {Void}
  def push(val)
    f = @freq.fetch(val, 0) + 1
    @freq[val] = f

    @max_freq = f if f > @max_freq

    if @group.key?(f)
      @group[f] << val
    else
      @group[f] = [val]
    end
  end

  # @return {Integer}
  def pop
    stack = @group[@max_freq]
    x = stack.delete_at(stack.size - 1)
    @freq[x] = @freq[x] - 1

    @max_freq -= 1 if @group[@max_freq].size.zero?

    x
  end
end
