# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/797_all_paths_from_source_to_target'
require 'minitest/autorun'

class AllPathsFromSourceToTargetTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [0, 1, 3],
        [0, 2, 3]
      ],
      all_paths_source_target(
        [
          [1, 2],
          [3],
          [3],
          []
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [0, 4],
        [0, 3, 4],
        [0, 1, 3, 4],
        [0, 1, 2, 3, 4],
        [0, 1, 4]
      ],
      all_paths_source_target(
        [
          [4, 3, 1],
          [3, 2, 4],
          [3],
          [4],
          []
        ]
      )
    )
  end
end
