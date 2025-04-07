# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2390_removing_stars_from_a_string'
require 'minitest/autorun'

class RemovingStarsFromAStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'lecoe',
      remove_stars(
        'leet**cod*e'
      )
    )
  end

  def test_default_two
    assert_equal(
      '',
      remove_stars(
        'erase*****'
      )
    )
  end
end
