# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1496_path_crossing'
require 'minitest/autorun'

class PathCrossingTest < ::Minitest::Test
  def test_default
    assert(!is_path_crossing('NES'))
    assert(is_path_crossing('NESWW'))
  end
end
