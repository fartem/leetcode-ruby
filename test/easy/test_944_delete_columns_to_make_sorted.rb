# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/944_delete_columns_to_make_sorted'
require 'minitest/autorun'

class DeleteColumnsToMakeSortedTest < ::Minitest::Test
  def test_default_one = assert_equal(1, min_deletion_size(%w[cba daf ghi]))

  def test_default_two = assert_equal(0, min_deletion_size(%w[a b]))

  def test_default_three = assert_equal(3, min_deletion_size(%w[zyx wvu tsr]))
end
