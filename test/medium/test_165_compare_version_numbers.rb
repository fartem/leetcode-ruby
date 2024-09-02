# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/165_compare_version_numbers'
require 'minitest/autorun'

class CompareVersionNumbersTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      -1,
      compare_version(
        '1.2',
        '1.10'
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      compare_version(
        '1.01',
        '1.001'
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      compare_version(
        '1.0',
        '1.0.0.0'
      )
    )
  end

  def test_additional_one
    assert_equal(
      1,
      compare_version(
        '1.0',
        '0.0.0'
      )
    )
  end
end
