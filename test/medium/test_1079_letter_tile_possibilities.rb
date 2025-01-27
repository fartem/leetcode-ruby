# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1079_letter_tile_possibilities'
require 'minitest/autorun'

class LetterTilePossibilitiesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      num_tile_possibilities(
        'AAB'
      )
    )
  end

  def test_default_two
    assert_equal(
      188,
      num_tile_possibilities(
        'AAABBC'
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      num_tile_possibilities(
        'V'
      )
    )
  end
end
