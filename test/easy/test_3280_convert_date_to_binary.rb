# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3280_convert_date_to_binary'
require 'minitest/autorun'

class ConvertDateToBinaryTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '100000100000-10-11101',
      convert_date_to_binary(
        '2080-02-29'
      )
    )
  end

  def test_default_two
    assert_equal(
      '11101101100-1-1',
      convert_date_to_binary(
        '1900-01-01'
      )
    )
  end
end
