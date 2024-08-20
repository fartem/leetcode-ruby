# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1370_increasing_decreasing_string'
require 'minitest/autorun'

class IncreasingDecreasingStringTest < ::Minitest::Test
  def test_default_one = assert_equal('abccbaabccba', sort_string('aaaabbbbcccc'))

  def test_default_two = assert_equal('art', sort_string('rat'))
end
