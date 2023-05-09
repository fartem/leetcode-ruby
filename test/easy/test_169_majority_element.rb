# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/169_majority_element'
require 'minitest/autorun'

class MajorityElementTest < ::Minitest::Test
  def test_default
    assert_equal(3, majority_element([3, 2, 3]))
    assert_equal(2, majority_element([2, 2, 1, 1, 1, 2, 2]))
  end
end
