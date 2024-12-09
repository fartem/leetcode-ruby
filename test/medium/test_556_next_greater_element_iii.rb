# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/556_next_greater_element_iii'
require 'minitest/autorun'

class NextGreaterElementIIITest < ::Minitest::Test
  def test_default_one = assert_equal(21, next_greater_element_iii(12))

  def test_default_two = assert_equal(-1, next_greater_element_iii(21))
end
