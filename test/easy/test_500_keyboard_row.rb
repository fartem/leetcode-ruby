# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/500_keyboard_row'
require 'minitest/autorun'

class KeyboardRowTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[Alaska Dad],
      find_words(%w[Hello Alaska Dad Peace])
    )
  end

  def test_default_two = assert_equal([], find_words(['omk']))

  def test_additional_one = assert_equal(['MMM'], find_words(['MMM']))
end
