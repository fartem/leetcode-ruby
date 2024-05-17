# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2418_sort_the_people'
require 'minitest/autorun'

class SortThePeopleTest < ::Minitest::Test
  def test_default
    assert_equal(%w[Mary Emma John], sort_people(%w[Mary John Emma], [180, 165, 170]))
    assert_equal(%w[Bob Alice Bob], sort_people(%w[Alice Bob Bob], [155, 185, 150]))
  end
end
