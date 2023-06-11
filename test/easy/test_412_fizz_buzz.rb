# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/412_fizz_buzz'
require 'minitest/autorun'

class FizzBuzzTest < ::Minitest::Test
  def test_default
    assert_equal(
      %w[1 2 Fizz],
      fizz_buzz(3)
    )
    assert_equal(
      %w[1 2 Fizz 4 Buzz],
      fizz_buzz(5)
    )
    assert_equal(
      %w[1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz],
      fizz_buzz(15)
    )
  end
end
