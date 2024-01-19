# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1971_find_if_path_exists_in_graph'
require 'minitest/autorun'

class FindIfPathExistsInGraphTest < ::Minitest::Test
  def test_default
    assert(valid_path(3, [[0, 1], [1, 2], [2, 0]], 0, 2))
    assert(!valid_path(6, [[0, 1], [0, 2], [3, 5], [5, 4], [4, 3]], 0, 5))
  end
end
