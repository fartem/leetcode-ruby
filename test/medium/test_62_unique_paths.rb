# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/62_unique_paths'
require 'minitest/autorun'

class UniquePathsTest < ::Minitest::Test
  def test_default
    assert_equal(28, unique_paths(3, 7))
    assert_equal(3, unique_paths(3, 2))
  end
end
