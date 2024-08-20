# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2124_check_if_all_as_appears_before_all_bs'
require 'minitest/autorun'

class CheckIfAllAsAppearsBeforeAllBsTest < ::Minitest::Test
  def test_default_one = assert(check_string('aaabbb'))

  def test_default_two = assert(!check_string('abab'))

  def test_default_three = assert(check_string('bbb'))
end
