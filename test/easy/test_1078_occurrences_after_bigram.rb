# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1078_occurrences_after_bigram'
require 'minitest/autorun'

class OccurrencesAfterBigramTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[girl student],
      find_occurrences(
        'alice is a good girl she is a good student',
        'a',
        'good'
      )
    )
  end

  def test_default_two
    assert_equal(
      %w[we rock],
      find_occurrences(
        'we will we will rock you',
        'we',
        'will'
      )
    )
  end
end
