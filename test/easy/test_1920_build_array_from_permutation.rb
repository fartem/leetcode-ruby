# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1920_build_array_from_permutation'
require 'minitest/autorun'

class BuildArrayFromPermutationTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 1, 2, 4, 5, 3],
      build_array(
        [0, 2, 1, 5, 3, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      [4, 5, 0, 1, 2, 3],
      build_array(
        [5, 0, 1, 2, 3, 4]
      )
    )
  end
end
