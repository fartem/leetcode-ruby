# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2124_check_if_all_as_appears_before_all_bs'
require 'minitest/autorun'

class CheckIfAllAsAppearsBeforeAllBsTest < ::Minitest::Test
  def test_default
    assert(check_string('aaabbb'))
    assert(!check_string('abab'))
    assert(check_string('bbb'))
  end
end
