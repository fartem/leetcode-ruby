# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/806_number_of_lines_to_write_string'
require 'minitest/autorun'

class NumberOfLinesToWriteStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 60],
      number_of_lines(
        [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
        'abcdefghijklmnopqrstuvwxyz'
      )
    )
  end

  def test_default_two
    assert_equal(
      [2, 4],
      number_of_lines(
        [4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
        'bbbcccdddaaa'
      )
    )
  end
end
