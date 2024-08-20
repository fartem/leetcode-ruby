# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1935_maximum_number_of_words_you_can_type'
require 'minitest/autorun'

class MaximumNumberOfWordsYouCanTypeTest < ::Minitest::Test
  def test_default_one = assert_equal(1, can_be_typed_words('hello world', 'ad'))

  def test_default_two = assert_equal(1, can_be_typed_words('leet code', 'lt'))

  def test_default_three = assert_equal(0, can_be_typed_words('leet code', 'e'))
end
