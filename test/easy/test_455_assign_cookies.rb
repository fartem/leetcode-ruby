# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/455_assign_cookies'
require 'minitest/autorun'

class AssignCookiesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      find_content_children(
        [1, 2, 3],
        [1, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      find_content_children(
        [1, 2],
        [1, 2, 3]
      )
    )
  end
end
