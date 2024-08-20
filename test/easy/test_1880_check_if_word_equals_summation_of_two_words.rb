# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1880_check_if_word_equals_summation_of_two_words'
require 'minitest/autorun'

class CheckIfWordEqualsSummationOfTwoWordsTest < ::Minitest::Test
  def test_default_one = assert(is_sum_equal('acb', 'cba', 'cdb'))

  def test_default_two = assert(!is_sum_equal('aaa', 'a', 'aab'))

  def test_default_three = assert(is_sum_equal('aaa', 'a', 'aaaa'))
end
