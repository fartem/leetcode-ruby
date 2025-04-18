# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3083_existence_of_a_substring_in_a_string_and_its_reverse'
require 'minitest/autorun'

class ExistenceOfASubstringInAStringAndItsReverseTest < ::Minitest::Test
  def test_default_one
    assert(
      is_substring_present(
        'leetcode'
      )
    )
  end

  def test_default_two
    assert(
      is_substring_present(
        'abcba'
      )
    )
  end

  def test_default_three
    assert(
      !is_substring_present(
        'abcd'
      )
    )
  end
end
