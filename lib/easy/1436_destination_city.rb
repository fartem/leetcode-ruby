# frozen_string_literal: true

# https://leetcode.com/problems/destination-city/
# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  cities = ::Set.new
  paths.each { |path| cities << path[1] }
  paths.each { |path| cities.delete(path[0]) }

  cities.first
end
