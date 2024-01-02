# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1897_redistribute_characters_to_make_all_strings_equal'
require 'minitest/autorun'

class RedistributeCharactersToMakeAllStringsEqualTest < ::Minitest::Test
  def test_default
    assert(make_equal(%w[abc aabc bc]))
    assert(!make_equal(%w[ab a]))
  end
end
