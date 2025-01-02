# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/841_keys_and_rooms'
require 'minitest/autorun'

class KeysAndRoomsTest < ::Minitest::Test
  def test_default_one
    assert(
      can_visit_all_rooms(
        [
          [1],
          [2],
          [3],
          []
        ]
      )
    )
  end

  def test_default_two
    assert(
      !can_visit_all_rooms(
        [
          [1, 3],
          [3, 0, 1],
          [2],
          [0]
        ]
      )
    )
  end
end
