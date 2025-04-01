# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2266_count_number_of_texts'
require 'minitest/autorun'

class CountNumberOfTextsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      count_texts(
        '22233'
      )
    )
  end

  def test_default_two
    assert_equal(
      82_876_089,
      count_texts(
        '222222222222222222222222222222222222'
      )
    )
  end
end
