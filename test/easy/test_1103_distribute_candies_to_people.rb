# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1103_distribute_candies_to_people'
require 'minitest/autorun'

class DistributeCandiesToPeopleTest < ::Minitest::Test
  def test_default_one = assert_equal([1, 2, 3, 1], distribute_candies(7, 4))

  def test_default_two = assert_equal([5, 2, 3], distribute_candies(10, 3))
end
