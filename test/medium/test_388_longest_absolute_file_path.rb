# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/388_longest_absolute_file_path'
require 'minitest/autorun'

class LongestAbsoluteFilePathTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      20,
      length_longest_path(
        "dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"
      )
    )
  end

  def test_default_two
    assert_equal(
      32,
      length_longest_path(
        "dir\n\tsubdir1\n\t\tfile1.ext\n\t\tsubsubdir1\n\tsubdir2\n\t\tsubsubdir2\n\t\t\tfile2.ext"
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      length_longest_path('a')
    )
  end
end
