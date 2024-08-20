# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/520_detect_capital'
require 'minitest/autorun'

class DetectCapitalTest < ::Minitest::Test
  def test_default_one = assert(detect_capital_use('USA'))

  def test_default_two = assert(!detect_capital_use('FlaG'))

  def test_additional_one = assert(detect_capital_use('word'))
end
