# frozen_string_literal: true

# https://leetcode.com/problems/map-sum-pairs/
class MapSum
  # Init
  def initialize
    @root = ::MapSum::Node.new
    @values = {}
  end

  # @param {String} key
  # @param {Integer} val
  # @return {Void}
  def insert(key, val)
    delta = val - @values.fetch(key, 0)
    @values[key] = val
    curr = @root
    curr.score += delta

    (0...key.size).each do |i|
      c = key[i]
      curr.children[c] = ::MapSum::Node.new unless curr.children.key?(c)
      curr = curr.children[c]
      curr.score += delta
    end
  end

  # @param {String} prefix
  # @return {Integer}
  def sum(prefix)
    curr = @root

    (0...prefix.size).each do |i|
      c = prefix[i]
      curr = curr.children[c]

      return 0 unless curr
    end

    curr.score
  end

  # Node realization
  class Node
    attr_accessor :children, :score

    # Init
    def initialize
      @children = {}
      @score = 0
    end
  end
end
