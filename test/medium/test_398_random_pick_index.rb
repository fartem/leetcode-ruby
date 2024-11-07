# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/398_random_pick_index'
require 'minitest/autorun'

class RandomPickIndexTest < ::Minitest::Test
  def test_default_one
    random_pick_index = ::RandomPickIndex.new([1, 2, 3, 3, 3])
    assert([2, 3, 4].include?(random_pick_index.pick(3)))
    assert([0].include?(random_pick_index.pick(1)))
    assert([2, 3, 4].include?(random_pick_index.pick(3)))
  end
end
