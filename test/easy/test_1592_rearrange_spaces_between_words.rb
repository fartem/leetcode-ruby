# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1592_rearrange_spaces_between_words'
require 'minitest/autorun'

class RearrangeSpacesBetweenWordsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'this   is   a   sentence',
      reorder_spaces(
        '  this   is  a sentence '
      )
    )
  end

  def test_default_two
    assert_equal(
      'practice   makes   perfect ',
      reorder_spaces(
        ' practice   makes   perfect'
      )
    )
  end
end
