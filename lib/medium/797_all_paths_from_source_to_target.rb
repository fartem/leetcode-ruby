# frozen_string_literal: true

# https://leetcode.com/problems/all-paths-from-source-to-target/
# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
  result = []
  fill_paths_for_all_paths_source_target(result, [0], graph, 0)

  result
end

private

# @param {Integer[][]} result
# @param {Integer[]} list
# @param {Integer[][]} graph
# @param {Integer} start
# @return {Void}
def fill_paths_for_all_paths_source_target(result, list, graph, start)
  if start == graph.size - 1
    result << list.clone
  else
    (0...graph[start].size).each do |i|
      curr = graph[start][i]
      list << curr
      fill_paths_for_all_paths_source_target(result, list, graph, curr)
      list.delete_at(list.size - 1)
    end
  end
end
