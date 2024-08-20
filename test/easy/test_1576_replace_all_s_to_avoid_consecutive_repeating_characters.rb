# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1576_replace_all_s_to_avoid_consecutive_repeating_characters'
require 'minitest/autorun'

class ReplaceAllSToAvoidConsecutiveRepeatingCharactersTest < ::Minitest::Test
  def test_default_one = assert_equal('azs', modify_string('?zs'))

  def test_default_two = assert_equal('ubvaw', modify_string('ubv?w'))

  def test_additional_one = assert_equal('ab', modify_string('a?'))
end
