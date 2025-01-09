# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/890_find_and_replace_pattern'
require 'minitest/autorun'

class FindAndReplacePatternTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[mee aqq],
      find_and_replace_pattern(
        %w[abc deq mee aqq dkd ccc],
        'abb'
      )
    )
  end

  def test_default_two
    assert_equal(
      %w[a b c],
      find_and_replace_pattern(
        %w[a b c],
        'a'
      )
    )
  end
end
