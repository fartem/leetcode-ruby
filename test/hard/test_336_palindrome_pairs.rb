# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/336_palindrome_pairs'
require 'minitest/autorun'

class PalindromePairsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [0, 1],
        [1, 0],
        [3, 2],
        [2, 4]
      ],
      palindrome_pairs(
        %w[abcd dcba lls s sssll]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [0, 1],
        [1, 0]
      ],
      palindrome_pairs(
        %w[bat tab cat]
      )
    )
  end

  def test_default_three
    assert_equal(
      [
        [0, 1],
        [1, 0]
      ],
      palindrome_pairs(
        ['a', '']
      )
    )
  end
end
