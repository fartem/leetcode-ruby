# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/414_third_maximum_number'
require 'minitest/autorun'

class ThirdMaximumNumberTest < ::Minitest::Test
  def test_default
    assert_equal(1, third_max([3, 2, 1]))
    assert_equal(2, third_max([1, 2]))
    assert_equal(1, third_max([2, 2, 3, 1]))
  end
end
