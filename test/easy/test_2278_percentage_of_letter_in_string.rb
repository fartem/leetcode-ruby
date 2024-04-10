# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2278_percentage_of_letter_in_string'
require 'minitest/autorun'

class PercentageOfLetterInStringTest < ::Minitest::Test
  def test_default
    assert_equal(33, percentage_letter('foobar', 'o'))
    assert_equal(0, percentage_letter('jjjj', 'k'))
  end
end
