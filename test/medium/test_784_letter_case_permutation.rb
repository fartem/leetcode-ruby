# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/784_letter_case_permutation'
require 'minitest/autorun'

class LetterCasePermutationTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[a1b2 a1B2 A1b2 A1B2],
      letter_case_permutation(
        'a1b2'
      )
    )
  end

  def test_default_two
    assert_equal(
      %w[3z4 3Z4],
      letter_case_permutation(
        '3z4'
      )
    )
  end
end
