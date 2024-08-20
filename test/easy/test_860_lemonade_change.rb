# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/860_lemonade_change'
require 'minitest/autorun'

class LemonadeChangeTest < ::Minitest::Test
  def test_default_one = assert(lemonade_change([5, 5, 5, 10, 20]))

  def test_default_two = assert(!lemonade_change([5, 5, 10, 10, 20]))

  def test_additional_one
    assert(
      lemonade_change(
        [5, 5, 10, 20, 5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 5, 5, 20, 5, 20, 5]
      )
    )
  end
end
