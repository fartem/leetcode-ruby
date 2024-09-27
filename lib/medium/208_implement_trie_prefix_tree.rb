# frozen_string_literal: true

# https://leetcode.com/problems/implement-trie-prefix-tree/
class Trie
  # Init
  def initialize
    @root = ::Node208.new
  end

  # @param {String} word
  # @return {Void}
  def insert(word)
    curr = @root
    word.each_char do |c|
      node = curr.children[c]

      unless node
        node = ::Node208.new
        curr.children[c] = node
      end

      curr = node
    end

    curr.nd = true
  end

  # @param {String} word
  # @return {Boolean}
  def search(word)
    curr = @root
    word.each_char do |c|
      node = curr.children[c]

      return false unless node

      curr = node
    end

    curr.nd
  end

  # @param {String} word
  # @return {Boolean}
  def starts_with(prefix)
    curr = @root
    prefix.each_char do |c|
      node = curr.children[c]

      return false unless node

      curr = node
    end

    true
  end
end

private

# Node for Trie
class Node208
  attr_accessor :children, :nd

  # Init
  def initialize
    @children = {}
    @nd = false
  end
end
