# frozen_string_literal: true

# https://leetcode.com/problems/find-if-path-exists-in-graph/description/
# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}
def valid_path(n, edges, source, destination)
  graph = {}
  edges.each do |edge|
    a = edge[0]
    b = edge[1]

    l_a = graph.fetch(a, [])
    l_a << b
    graph[a] = l_a

    l_b = graph.fetch(b, [])
    l_b << a
    graph[b] = l_b
  end

  visited = ::Array.new(n, false)

  _dfs(graph, visited, source, destination)
end

# @param {Map} graph
# @param {Boolean[]} visited
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}
def _dfs(graph, visited, source, destination)
  return false if visited[source]

  return true if source == destination

  visited[source] = true
  graph[source].each do |neighbour|
    return true if _dfs(graph, visited, neighbour, destination)
  end

  false
end
