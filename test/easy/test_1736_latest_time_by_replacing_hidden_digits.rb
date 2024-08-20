# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1736_latest_time_by_replacing_hidden_digits'
require 'minitest/autorun'

class LatestTimeByReplacinHiddenDigitsTest < ::Minitest::Test
  def test_default_one = assert_equal('23:50', maximum_time('2?:?0'))

  def test_default_two = assert_equal('09:39', maximum_time('0?:3?'))

  def test_default_three = assert_equal('19:22', maximum_time('1?:22'))

  def test_additional_one = assert_equal('23:50', maximum_time('??:?0'))

  def test_additional_two = assert_equal('23:50', maximum_time('?3:?0'))
end
