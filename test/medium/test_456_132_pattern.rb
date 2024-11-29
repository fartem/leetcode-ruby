# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/456_132_pattern'
require 'minitest/autorun'

class Pattern132Test < ::Minitest::Test
  def test_default_one = assert(!find132pattern([1, 2, 3, 4]))

  def test_default_two = assert(find132pattern([3, 1, 4, 2]))

  def test_default_three = assert(find132pattern([-1, 3, 2, 0]))
end
