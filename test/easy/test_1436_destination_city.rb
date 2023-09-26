# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1436_destination_city'
require 'minitest/autorun'

class DestinationCityTest < ::Minitest::Test
  def test_default
    assert_equal(
      'Sao Paulo',
      dest_city([['London', 'New York'], ['New York', 'Lima'], ['Lima', 'Sao Paulo']])
    )
    assert_equal('A', dest_city([%w[B C], %w[D B], %w[C A]]))
    assert_equal('Z', dest_city([%w[A Z]]))
  end
end
