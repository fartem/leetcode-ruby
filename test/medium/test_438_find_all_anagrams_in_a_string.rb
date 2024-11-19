# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/438_find_all_anagrams_in_a_string'
require 'minitest/autorun'

class FindAllAnagramsInAStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 6],
      find_anagrams(
        'cbaebabacd',
        'abc'
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 1, 2],
      find_anagrams(
        'abab',
        'ab'
      )
    )
  end
end
