# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/937_reorder_data_in_log_files'
require 'minitest/autorun'

class ReorderDataInLogFilesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        'let1 art can',
        'let3 art zero',
        'let2 own kit dig',
        'dig1 8 1 5 1',
        'dig2 3 6'
      ],
      reorder_log_files(
        [
          'dig1 8 1 5 1',
          'let1 art can',
          'dig2 3 6',
          'let2 own kit dig',
          'let3 art zero'
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        'g1 act car',
        'a8 act zoo',
        'ab1 off key dog',
        'a1 9 2 3 1',
        'zo4 4 7'
      ],
      reorder_log_files(
        [
          'a1 9 2 3 1',
          'g1 act car',
          'zo4 4 7',
          'ab1 off key dog',
          'a8 act zoo'
        ]
      )
    )
  end

  def test_additional_one
    assert_equal(
      [
        'a2 act car',
        'g1 act car',
        'a8 act zoo',
        'ab1 off key dog',
        'a1 9 2 3 1',
        'zo4 4 7'
      ],
      reorder_log_files(
        [
          'a1 9 2 3 1',
          'g1 act car',
          'zo4 4 7',
          'ab1 off key dog',
          'a8 act zoo',
          'a2 act car'
        ]
      )
    )
  end
end
