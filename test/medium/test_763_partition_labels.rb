# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/763_partition_labels'
require 'minitest/autorun'

class PartitionLabelsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [9, 7, 8],
      partition_labels(
        'ababcbacadefegdehijhklij'
      )
    )
  end

  def test_default_two
    assert_equal(
      [10],
      partition_labels(
        'eccbbbbdec'
      )
    )
  end
end
