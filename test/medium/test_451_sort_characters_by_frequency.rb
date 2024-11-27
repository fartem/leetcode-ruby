# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/451_sort_characters_by_frequency'
require 'minitest/autorun'

class SortCharactersByFrequencyTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'eert',
      frequency_sort451(
        'tree'
      )
    )
  end

  def test_default_two
    assert_equal(
      'aaaccc',
      frequency_sort451(
        'cccaaa'
      )
    )
  end

  def test_default_three
    assert_equal(
      'bbAa',
      frequency_sort451(
        'bbAa'
      )
    )
  end
end
