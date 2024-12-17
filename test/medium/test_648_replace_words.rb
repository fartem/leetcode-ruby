# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/648_replace_words'
require 'minitest/autorun'

class ReplaceWordsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'the cat was rat by the bat',
      replace_words(
        %w[cat bat rat],
        'the cattle was rattled by the battery'
      )
    )
  end

  def test_default_two
    assert_equal(
      'a a b c',
      replace_words(
        %w[a b c],
        'aadsfasf absbs bbab cadsfafs'
      )
    )
  end
end
