# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1437_check_if_all_1s_are_at_least_length_k_places_away'
require 'minitest/autorun'

class CheckIfAll1sAreAtLeastLengthKPlacesAwayTest < ::Minitest::Test
  def test_default_one
    assert(
      k_length_apart(
        [1, 0, 0, 0, 1, 0, 0, 1],
        2
      )
    )
  end

  def test_default_two
    assert(
      !k_length_apart(
        [1, 0, 0, 1, 0, 1],
        2
      )
    )
  end
end
