# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1576_replace_all_s_to_avoid_consecutive_repeating_characters'
require 'minitest/autorun'

class ReplaceAllSToAvoidConsecutiveRepeatingCharactersTest < ::Minitest::Test
  def test_default
    assert_equal('azs', modify_string('?zs'))
    assert_equal('ubvaw', modify_string('ubv?w'))
  end

  def test_additional
    assert_equal('ab', modify_string('a?'))
  end
end
