# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3046_split_the_array'
require 'minitest/autorun'

class SplitTheArrayTest < ::Minitest::Test
  def test_default_one
    assert(
      is_possible_to_split(
        [1, 1, 2, 2, 3, 4]
      )
    )
  end

  def test_default_two
    assert(
      !is_substring_present(
        [1, 1, 1, 1]
      )
    )
  end
end
