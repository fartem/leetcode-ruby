# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1704_determine_if_string_halves_are_alike'
require 'minitest/autorun'

class DetermineIfStringHalvesAreAlikeTest < ::Minitest::Test
  def test_default
    assert(halves_are_alike('book'))
    assert(!halves_are_alike('textbook'))
  end
end
