# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1207_unique_number_of_occurrences'
require 'minitest/autorun'

class UniqueNumberOfOccurrencesTest < ::Minitest::Test
  def test_default
    assert(unique_occurrences([1, 2, 2, 1, 1, 3]))
    assert(!unique_occurrences([1, 2]))
    assert(unique_occurrences([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]))
  end
end
