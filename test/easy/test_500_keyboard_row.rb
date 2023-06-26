# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/500_keyboard_row'
require 'minitest/autorun'

class KeyboardRowTest < ::Minitest::Test
  def test_default
    assert_equal(
      %w[Alaska Dad],
      find_words(%w[Hello Alaska Dad Peace])
    )
    assert_equal([], find_words(['omk']))
  end

  def test_additional
    assert_equal(['MMM'], find_words(['MMM']))
  end
end
