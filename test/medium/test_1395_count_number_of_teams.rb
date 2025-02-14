# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1395_count_number_of_teams'
require 'minitest/autorun'

class CountNumberOfTeamsTest < ::Minitest::Test
  def test_default_one = assert_equal(3, num_teams([2, 5, 3, 4, 1]))

  def test_default_two = assert_equal(0, num_teams([2, 1, 3]))

  def test_default_three = assert_equal(4, num_teams([1, 2, 3, 4]))
end
