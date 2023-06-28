# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/504_base_7'
require 'minitest/autorun'

class Base7Test < ::Minitest::Test
  def test_default
    assert_equal('202', convert_to_base7(100))
    assert_equal('-10', convert_to_base7(-7))
  end
end
