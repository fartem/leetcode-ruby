# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/62_unique_paths'
require 'minitest/autorun'

class UniquePathsTest < ::Minitest::Test
  def test_default_one = assert_equal(28, unique_paths(3, 7))

  def test_default_two = assert_equal(3, unique_paths(3, 2))
end
