# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1952_three_divisors'
require 'minitest/autorun'

class ThreeDivisorsTest < ::Minitest::Test
  def test_default_one = assert(!is_three(2))

  def test_default_two = assert(is_three(4))
end
