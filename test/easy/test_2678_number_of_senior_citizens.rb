# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2678_number_of_senior_citizens'
require 'minitest/autorun'

class NumberOfSeniorCitizensTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      count_seniors(
        %w[
          7868190130M7522
          5303914400F9211
          9273338290F4010
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      count_seniors(
        %w[
          1313579440F2036
          2921522980M564
        ]
      )
    )
  end
end
