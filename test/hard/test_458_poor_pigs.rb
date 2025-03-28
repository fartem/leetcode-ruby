# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/458_poor_pigs'
require 'minitest/autorun'

class PoorPigsTest < ::Minitest::Test
  def test_default_one = assert_equal(2, poor_pigs(4, 15, 15))

  def test_default_two = assert_equal(2, poor_pigs(4, 15, 30))
end
