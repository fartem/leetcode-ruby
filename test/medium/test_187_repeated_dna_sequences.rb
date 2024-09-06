# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/187_repeated_dna_sequences'
require 'minitest/autorun'

class RepeatedDNASequencesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[AAAAACCCCC CCCCCAAAAA],
      find_repeated_dna_sequences(
        'AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT'
      )
    )
  end

  def test_default_two
    assert_equal(
      ['AAAAAAAAAA'],
      find_repeated_dna_sequences(
        'AAAAAAAAAAAAA'
      )
    )
  end
end
