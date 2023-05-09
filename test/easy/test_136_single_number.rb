# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/136_single_number'
require 'minitest/autorun'

class SingleNumberTest < ::Minitest::Test
  def test_default
    assert_equal(1, single_number([2, 2, 1]))
    assert_equal(4, single_number([4, 1, 2, 1, 2]))
    assert_equal(1, single_number([1]))
  end
end
