# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1598_crawler_log_folder'
require 'minitest/autorun'

class CrawlerLogFolderTest < ::Minitest::Test
  def test_default
    assert_equal(2, min_operations(%w[d1/ d2/ ../ d21/ ./]))
    assert_equal(3, min_operations(%w[d1/ d2/ ./ d3/ ../ d31/]))
    assert_equal(0, min_operations(%w[d1/ ../ ../ ../]))
  end
end
