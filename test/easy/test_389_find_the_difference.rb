# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/389_find_the_difference'
require 'minitest/autorun'

class FindTheDifferenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'e',
      find_the_difference(
        'abcd',
        'abcde'
      )
    )
  end

  def test_default_two
    assert_equal(
      'y',
      find_the_difference(
        '',
        'y'
      )
    )
  end
end
