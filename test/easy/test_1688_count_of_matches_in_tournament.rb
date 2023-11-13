# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1688_count_of_matches_in_tournament'
require 'minitest/autorun'

class CountOfMatchesInTournamentTest < ::Minitest::Test
  def test_default
    assert_equal(6, number_of_matches(7))
    assert_equal(13, number_of_matches(14))
  end
end
