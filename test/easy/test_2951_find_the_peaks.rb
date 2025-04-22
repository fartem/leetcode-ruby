# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2951_find_the_peaks'
require 'minitest/autorun'

class FindThePeaksTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [],
      find_peaks(
        [2, 4, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 3],
      find_peaks(
        [1, 4, 3, 8, 5]
      )
    )
  end
end
