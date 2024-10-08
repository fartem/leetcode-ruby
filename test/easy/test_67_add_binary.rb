# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/67_add_binary'
require 'minitest/autorun'

class AddBinaryTest < ::Minitest::Test
  def test_default_one = assert_equal('100', add_binary('11', '1'))

  def test_default_two = assert_equal('10101', add_binary('1010', '1011'))
end
