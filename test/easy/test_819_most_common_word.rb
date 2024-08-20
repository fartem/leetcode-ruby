# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/819_most_common_word'
require 'minitest/autorun'

class MostCommonWordTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'ball',
      most_common_word(
        'Bob hit a ball, the hit BALL flew far after it was hit.',
        ['hit']
      )
    )
  end

  def test_default_two = assert_equal('a', most_common_word('a.', []))

  def test_additional_one
    assert_equal(
      'ball',
      most_common_word(
        'Bob. hIt, baLl', %w[bob hit]
      )
    )
  end
end
