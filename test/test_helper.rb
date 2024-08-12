# frozen_string_literal: true

require 'simplecov'

::SimpleCov.use_merging(true)
::SimpleCov.start do
  add_filter 'next_tree_node'

  add_filter '706_design_hashmap'
  add_filter '33_search_in_rotated_sorted_array'

  minimum_coverage 100
end
