# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/171_excel_sheet_column_number'
require 'minitest/autorun'

class ExcelSheetColumnNumberTest < ::Minitest::Test
  def test_default_one = assert_equal(1, title_to_number('A'))

  def test_default_two = assert_equal(28, title_to_number('AB'))

  def test_default_three = assert_equal(701, title_to_number('ZY'))
end
