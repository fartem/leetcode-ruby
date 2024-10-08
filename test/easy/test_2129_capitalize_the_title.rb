# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2129_capitalize_the_title'
require 'minitest/autorun'

class CapitalizeTheTitleTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'Capitalize The Title',
      capitalize_title(
        'capiTalIze tHe titLe'
      )
    )
  end

  def test_default_two
    assert_equal(
      'First Letter of Each Word',
      capitalize_title(
        'First leTTeR of EACH Word'
      )
    )
  end

  def test_default_three
    assert_equal(
      'i Love Leetcode',
      capitalize_title(
        'i lOve leetcode'
      )
    )
  end
end
