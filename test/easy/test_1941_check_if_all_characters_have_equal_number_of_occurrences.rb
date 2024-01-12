# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1941_check_if_all_characters_have_equal_number_of_occurrences'
require 'minitest/autorun'

class CheckIfAllCharactersHaveEqualNumberOfOccurrencesTest < ::Minitest::Test
  def test_default
    assert(are_occurrences_equal('abacbc'))
    assert(!are_occurrences_equal('aaabb'))
  end
end
