# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/71_simplify_path'
require 'minitest/autorun'

class SimplifyPathTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '/home',
      simplify_path(
        '/home/'
      )
    )
  end

  def test_default_two
    assert_equal(
      '/home/foo',
      simplify_path(
        '/home//foo/'
      )
    )
  end

  def test_default_three
    assert_equal(
      '/home/user/Pictures',
      simplify_path(
        '/home/user/Documents/../Pictures'
      )
    )
  end

  def test_default_four
    assert_equal(
      '/',
      simplify_path(
        '/../'
      )
    )
  end

  def test_default_five
    assert_equal(
      '/.../b/d',
      simplify_path(
        '/.../a/../b/c/../d/./'
      )
    )
  end
end
