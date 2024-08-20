# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/69_sqrtx'
require 'minitest/autorun'

class SqrtXTest < ::Minitest::Test
  def test_default_one = assert_equal(2, my_sqrt(4))

  def test_default_two = assert_equal(2, my_sqrt(8))
end
