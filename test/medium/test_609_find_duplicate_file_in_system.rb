# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/609_find_duplicate_file_in_system'
require 'minitest/autorun'

class FindDuplicateFileInSystemTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [
          'root/a/1.txt',
          'root/c/3.txt'
        ],
        [
          'root/a/2.txt',
          'root/c/d/4.txt',
          'root/4.txt'
        ]
      ],
      find_duplicate_paths(
        [
          'root/a 1.txt(abcd) 2.txt(efgh)',
          'root/c 3.txt(abcd)',
          'root/c/d 4.txt(efgh)',
          'root 4.txt(efgh)'
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [
          'root/a/1.txt',
          'root/c/3.txt'
        ],
        [
          'root/a/2.txt',
          'root/c/d/4.txt'
        ]
      ],
      find_duplicate_paths(
        [
          'root/a 1.txt(abcd) 2.txt(efgh)',
          'root/c 3.txt(abcd)',
          'root/c/d 4.txt(efgh)'
        ]
      )
    )
  end
end
