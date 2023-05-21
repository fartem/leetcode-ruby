# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/258_add_digits'
require 'minitest/autorun'

class AddDigitsTest < ::Minitest::Test
  def test_default
    assert_equal(2, add_digits(38))
    assert_equal(0, add_digits(0))
  end
end
