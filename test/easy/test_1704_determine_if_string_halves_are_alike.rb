# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1704_determine_if_string_halves_are_alike'
require 'minitest/autorun'

class DetermineIfStringHalvesAreAlikeTest < ::Minitest::Test
  def test_default_one = assert(halves_are_alike('book'))

  def test_default_two = assert(!halves_are_alike('textbook'))
end
