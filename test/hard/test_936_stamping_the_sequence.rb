# frozen_string_literal: false

require_relative '../test_helper'
require_relative '../../lib/hard/936_stamping_the_sequence'
require 'minitest/autorun'

class StampingTheSequenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 2],
      moves_to_stamp(
        'abc',
        'ababc'
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 3, 1],
      moves_to_stamp(
        'abca',
        'aabcaca'
      )
    )
  end
end
