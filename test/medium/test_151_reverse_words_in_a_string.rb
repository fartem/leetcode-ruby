# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/151_reverse_words_in_a_string'
require 'minitest/autorun'

class ReverseWordsInAStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'blue is sky the',
      reverse_words151(
        'the sky is blue'
      )
    )
  end

  def test_default_two
    assert_equal(
      'world hello',
      reverse_words151(
        '  hello world  '
      )
    )
  end

  def test_default_three
    assert_equal(
      'example good a',
      reverse_words151(
        'a good   example'
      )
    )
  end
end
