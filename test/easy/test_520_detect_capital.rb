# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/520_detect_capital'
require 'minitest/autorun'

class DetectCapitalTest < ::Minitest::Test
  def test_default
    assert(detect_capital_use('USA'))
    assert(!detect_capital_use('FlaG'))
  end

  def test_additional
    assert(detect_capital_use('word'))
  end
end
