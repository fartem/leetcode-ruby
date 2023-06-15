# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/441_arranging_coins'
require 'minitest/autorun'

class ArrangingCoinsTest < ::Minitest::Test
  def test_default
    assert_equal(2, arrange_coins(5))
    assert_equal(3, arrange_coins(8))
  end
end
