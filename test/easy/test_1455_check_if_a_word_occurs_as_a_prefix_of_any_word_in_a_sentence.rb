# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1455_check_if_a_word_occurs_as_a_prefix_of_any_word_in_a_sentence'
require 'minitest/autorun'

class CheckIfAWordOccursAsAPrefixOfAnyWordInASentenceTest < ::Minitest::Test
  def test_default
    assert_equal(4, is_prefix_of_word('i love eating burger', 'burg'))
    assert_equal(2, is_prefix_of_word('this problem is an easy problem', 'pro'))
    assert_equal(-1, is_prefix_of_word('i am tired', 'you'))
  end
end
