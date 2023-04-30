# frozen_string_literal: true

require_relative '../../lib/easy/69_sqrtx'
require 'minitest/autorun'

class SqrtXTest < ::Minitest::Test
  def test_default
    assert_equal(2, my_sqrt(4))
    assert_equal(2, my_sqrt(8))
  end
end
