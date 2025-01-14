# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/946_validate_stack_sequences'
require 'minitest/autorun'

class ValidateStackSequencesTest < ::Minitest::Test
  def test_default_one
    assert(
      validate_stack_sequences(
        [1, 2, 3, 4, 5],
        [4, 5, 3, 2, 1]
      )
    )
  end

  def test_default_two
    assert(
      !validate_stack_sequences(
        [1, 2, 3, 4, 5],
        [4, 3, 5, 1, 2]
      )
    )
  end
end
