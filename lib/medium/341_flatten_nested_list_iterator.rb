# frozen_string_literal: true

# https://leetcode.com/problems/flatten-nested-list-iterator/
class NestedIterator
  # @param {NestedInteger[]} nested_list
  def initialize(nested_list)
    @values = []
    @pointer = 0

    prepare(nested_list)
  end

  # @return {Boolean}
  def has_next = @pointer < @values.size

  # @return {Integer}
  def next
    val = @values[@pointer]
    @pointer += 1

    val
  end

  private

  # @param {NestedInteger[]} nested_list
  # @return {Integer[]}
  def prepare(nested_list)
    nested_list.each do |num|
      if num.is_integer
        @values << num.get_integer
      else
        prepare(num.get_list)
      end
    end
  end
end

# NestedInteger for NestedIterator
class NestedInteger
  # @param {NestenInteger} num
  def initialize(num)
    @num = num
  end

  # @return {Boolean}
  def is_integer = @num.is_a?(::Integer)

  # @return {Integer}
  def get_integer = @num

  # @return {Array}
  def get_list = @num
end
