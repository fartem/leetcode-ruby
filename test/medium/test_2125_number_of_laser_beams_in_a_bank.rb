# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2125_number_of_laser_beams_in_a_bank'
require 'minitest/autorun'

class NumberOfLaserBeamsInABankTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      number_of_beams(
        %w[
          011001
          000000
          010100
          001000
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      number_of_beams(
        %w[
          000
          111
          000
        ]
      )
    )
  end
end
