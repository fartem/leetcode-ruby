# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1047_remove_all_adjacent_duplicates_in_string'
require 'minitest/autorun'

class RemoveAllAdjacentDuplicatesInStringTest < ::Minitest::Test
  def test_default_one = assert_equal('ca', remove_duplicates_all('abbaca'))

  def test_default_two = assert_equal('ay', remove_duplicates_all('azxxzy'))
end
