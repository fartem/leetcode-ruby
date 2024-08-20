# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/168_excel_sheet_column_title'
require 'minitest/autorun'

class ExcelSheetColumnTitleTest < ::Minitest::Test
  def test_default_one = assert_equal('A', convert_to_title(1))

  def test_default_two = assert_equal('AB', convert_to_title(28))

  def test_default_three = assert_equal('ZY', convert_to_title(701))
end
