# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1461_check_if_a_string_contains_all_binary_codes_of_size_k'
require 'minitest/autorun'

class CheckIfAStringContainsAllBinaryCodesOfSizeKTest < ::Minitest::Test
  def test_default_one = assert(has_all_codes('00110110', 2))

  def test_default_two = assert(has_all_codes('0110', 1))

  def test_default_three = assert(!has_all_codes('0110', 2))
end
