# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1880_check_if_word_equals_summation_of_two_words'
require 'minitest/autorun'

class CheckIfWordEqualsSummationOfTwoWordsTest < ::Minitest::Test
  def test_default
    assert(is_sum_equal('acb', 'cba', 'cdb'))
    assert(!is_sum_equal('aaa', 'a', 'aab'))
    assert(is_sum_equal('aaa', 'a', 'aaaa'))
  end
end
