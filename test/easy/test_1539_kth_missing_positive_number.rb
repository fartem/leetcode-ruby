# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1539_kth_missing_positive_number'
require 'minitest/autorun'

class KthMissingPositiveNumberTest < ::Minitest::Test
  def test_default_one = assert_equal(9, find_kth_positive([2, 3, 4, 7, 11], 5))

  def test_default_two = assert_equal(6, find_kth_positive([1, 2, 3, 4], 2))
end
