# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/71_simplify_path'
require 'minitest/autorun'

class SimplifyPathTest < ::Minitest::Test
  def test_default
    assert_equal('/home', simplify_path('/home/'))
    assert_equal('/home/foo', simplify_path('/home//foo/'))
    assert_equal('/home/user/Pictures', simplify_path('/home/user/Documents/../Pictures'))
    assert_equal('/', simplify_path('/../'))
    assert_equal('/.../b/d', simplify_path('/.../a/../b/c/../d/./'))
  end
end
