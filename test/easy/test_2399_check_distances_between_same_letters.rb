# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2399_check_distances_between_same_letters'
require 'minitest/autorun'

class CheckDistancesBetweenSameLettersTest < ::Minitest::Test
  def test_default
    assert(
      check_distances(
        'abaccb',
        [1, 3, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      )
    )
    assert(
      !check_distances(
        'aa',
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      )
    )
  end
end
