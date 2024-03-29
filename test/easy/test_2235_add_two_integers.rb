# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2235_add_two_integers'
require 'minitest/autorun'

class AddTwoIntegersTest < ::Minitest::Test
  def test_default
    assert_equal(17, sum(12, 5))
    assert_equal(-6, sum(-10, 4))
  end
end
