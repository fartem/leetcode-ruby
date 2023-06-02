# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/367_valid_perfect_square'
require 'minitest/autorun'

class ValidPerfectSquareTest < ::Minitest::Test
  def test_default
    assert(is_perfect_square(16))
    assert(!is_perfect_square(14))
  end
end
