# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1780_check_if_number_is_a_sum_of_powers_of_three'
require 'minitest/autorun'

class CheckIfNumberIsASumOfPowersThreeTest < ::Minitest::Test
  def test_default_one = assert(check_powers_of_three(12))

  def test_default_two = assert(check_powers_of_three(91))

  def test_default_three = assert(!check_powers_of_three(21))
end
