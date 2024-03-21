# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2194_cells_in_a_range_on_an_excel_sheet'
require 'minitest/autorun'

class CellsInARangeOnAnExcelSheetTest < ::Minitest::Test
  def test_default
    assert_equal(%w[K1 K2 L1 L2], cells_in_range('K1:L2'))
    assert_equal(%w[A1 B1 C1 D1 E1 F1], cells_in_range('A1:F1'))
  end
end
