# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/316_remove_duplicate_letters'
require 'minitest/autorun'

class RemoveDuplicateLettersTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'abc',
      remove_duplicate_letters(
        'bcabc'
      )
    )
  end

  def test_default_two
    assert_equal(
      'acdb',
      remove_duplicate_letters(
        'cbacdcbc'
      )
    )
  end
end
