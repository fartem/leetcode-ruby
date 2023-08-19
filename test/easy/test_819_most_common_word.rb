# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/819_most_common_word'
require 'minitest/autorun'

class MostCommonWordTest < ::Minitest::Test
  def test_default
    assert_equal(
      'ball',
      most_common_word(
        'Bob hit a ball, the hit BALL flew far after it was hit.',
        ['hit']
      )
    )
    assert_equal('a', most_common_word('a.', []))
  end

  def test_additional
    assert_equal('ball', most_common_word('Bob. hIt, baLl', %w[bob hit]))
  end
end
