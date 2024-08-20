# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/557_reverse_words_in_a_string_iii'
require 'minitest/autorun'

class ReverseWordsInAStringIIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      "s'teL ekat edoCteeL tsetnoc",
      reverse_words(
        "Let's take LeetCode contest"
      )
    )
  end

  def test_default_two
    assert_equal(
      'doG gniD',
      reverse_words(
        'God Ding'
      )
    )
  end
end
