# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/405_convert_a_number_to_hexadecimal'
require 'minitest/autorun'

class ConvertANumberToHexadecimalTest < ::Minitest::Test
  def test_default_one = assert_equal('1a', to_hex(26))

  def test_default_two = assert_equal('ffffffff', to_hex(-1))
end
