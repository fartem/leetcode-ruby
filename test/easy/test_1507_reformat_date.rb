# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1507_reformat_date'
require 'minitest/autorun'

class ReformatDateTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '2052-10-20',
      reformat_date(
        '20th Oct 2052'
      )
    )
  end

  def test_default_two
    assert_equal(
      '1933-06-06',
      reformat_date(
        '6th Jun 1933'
      )
    )
  end

  def test_default_three
    assert_equal(
      '1960-05-26',
      reformat_date(
        '26th May 1960'
      )
    )
  end
end
