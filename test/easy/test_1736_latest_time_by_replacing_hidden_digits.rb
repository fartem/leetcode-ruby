# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1736_latest_time_by_replacing_hidden_digits'
require 'minitest/autorun'

class LatestTimeByReplacinHiddenDigitsTest < ::Minitest::Test
  def test_default
    assert_equal('23:50', maximum_time('2?:?0'))
    assert_equal('09:39', maximum_time('0?:3?'))
    assert_equal('19:22', maximum_time('1?:22'))
  end

  def test_additional
    assert_equal('23:50', maximum_time('??:?0'))
    assert_equal('23:50', maximum_time('?3:?0'))
  end
end
