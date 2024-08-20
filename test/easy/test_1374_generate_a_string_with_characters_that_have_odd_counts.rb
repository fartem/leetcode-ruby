# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1374_generate_a_string_with_characters_that_have_odd_counts'
require 'minitest/autorun'

class GenerateAStringWithCharactersThatHaveOddCountsTest < ::Minitest::Test
  def test_default_one = assert_equal('aaab', generate_the_string(4))

  def test_default_two = assert_equal('ab', generate_the_string(2))

  def test_default_three = assert_equal('aaaaaaa', generate_the_string(7))
end
