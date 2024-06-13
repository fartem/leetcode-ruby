# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2525_categorize_box_according_to_criteria'
require 'minitest/autorun'

class CategorizeBoxAccordingToCriteriaTest < ::Minitest::Test
  def test_default
    assert_equal('Heavy', categorize_box(1000, 35, 700, 300))
    assert_equal('Neither', categorize_box(200, 50, 800, 50))
  end

  def test_additional
    assert_equal('Both', categorize_box(2909, 3968, 3272, 727))
    assert_equal('Bulky', categorize_box(92_487, 6200, 58_423, 40))
  end
end
