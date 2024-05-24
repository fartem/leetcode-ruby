# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2446_determine_if_two_events_have_conflict'
require 'minitest/autorun'

class DetermineIfTwoEventsHaveConflictTest < ::Minitest::Test
  def test_default
    assert(have_conflict(%w[01:15 02:00], %w[02:00 03:00]))
    assert(have_conflict(%w[01:00 02:00], %w[01:20 03:00]))
    assert(!have_conflict(%w[10:00 11:00], %w[14:00 15:00]))
  end
end
