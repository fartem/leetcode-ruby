# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/880_decoded_string_at_index'
require 'minitest/autorun'

class DecodedStringAtIndexTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'o',
      decode_at_index(
        'leet2code3',
        10
      )
    )
  end

  def test_default_two
    assert_equal(
      'h',
      decode_at_index(
        'ha22',
        5
      )
    )
  end

  def test_default_three
    assert_equal(
      'a',
      decode_at_index(
        'a2345678999999999999999',
        1
      )
    )
  end
end
