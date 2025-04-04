# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2375_construct_smallest_number_from_di_string'
require 'minitest/autorun'

class ConstructSmallestNumberFromDIStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '123549876',
      smallest_number2375(
        'IIIDIDDD'
      )
    )
  end

  def test_default_two
    assert_equal(
      '4321',
      smallest_number2375(
        'DDD'
      )
    )
  end
end
