# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1629_slowest_key'
require 'minitest/autorun'

class SlowestKeyTest < ::Minitest::Test
  def test_default_one = assert_equal('c', slowest_key([9, 29, 49, 50], 'cbcd'))

  def test_default_two = assert_equal('a', slowest_key([12, 23, 36, 46, 62], 'spuda'))
end
