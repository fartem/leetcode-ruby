# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/168_excel_sheet_column_title'
require 'minitest/autorun'

class ExcelSheetColumnTitleTest < ::Minitest::Test
  def test_default
    assert_equal('A', convert_to_title(1))
    assert_equal('AB', convert_to_title(28))
    assert_equal('ZY', convert_to_title(701))
  end
end
