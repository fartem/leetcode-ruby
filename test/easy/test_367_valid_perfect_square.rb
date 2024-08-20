# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/367_valid_perfect_square'
require 'minitest/autorun'

class ValidPerfectSquareTest < ::Minitest::Test
  def test_default_one = assert(is_perfect_square(16))

  def test_default_two = assert(!is_perfect_square(14))
end
