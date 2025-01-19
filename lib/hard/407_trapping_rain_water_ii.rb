# frozen_string_literal: true

# https://leetcode.com/problems/trapping-rain-water-ii/
# @param {Integer[][]} height_map
# @return {Integer}
def trap_rain_water(height_map)
  trapped_water = 0
  water_level_map = ::Array.new(height_map.size) { ::Array.new(height_map[0].size, 20_000) }

  (1...height_map.size - 1).each do |i|
    water_level_map[i][0] = height_map[i][0]

    (1...height_map[i].size - 1).each { |j| water_level_map[i][j] = 20_000 }

    water_level_map[i][height_map[i].size - 1] = height_map[i][height_map[i].size - 1]
  end

  (0...height_map[0].size).each do |i|
    water_level_map[0][i] = height_map[0][i]
    water_level_map[height_map.size - 1][i] = height_map[height_map.size - 1][i]
  end

  drain = true
  while drain
    drain = false
    (1...height_map[0].size - 1).each do |i|
      (1...height_map.size - 1).each do |j|
        next unless water_level_map[j][i] > height_map[j][i]

        water_level_map[j][i] = [water_level_map[j][i - 1], height_map[j][i]].max if water_level_map[j][i] > water_level_map[j][i - 1]
        water_level_map[j][i] = [water_level_map[j - 1][i], height_map[j][i]].max if water_level_map[j][i] > water_level_map[j - 1][i]
      end
    end

    (height_map[0].size - 2).downto(1) do |i|
      (height_map.size - 2).downto(1) do |j|
        next unless water_level_map[j][i] > height_map[j][i]

        water_level_map[j][i] = [water_level_map[j][i + 1], height_map[j][i]].max if water_level_map[j][i] > water_level_map[j][i + 1]
        water_level_map[j][i] = [water_level_map[j + 1][i], height_map[j][i]].max if water_level_map[j][i] > water_level_map[j + 1][i]

        next unless water_level_map[j][i] < water_level_map[j][i + 1] && water_level_map[j][i + 1] > height_map[j][i + 1] ||
                    water_level_map[j][i] < water_level_map[j + 1][i] && water_level_map[j + 1][i] > height_map[j + 1][i]

        drain = true
      end
    end
  end

  (1...water_level_map.size - 1).each do |i|
    (1...water_level_map[i].size - 1).each do |j|
      trapped_water += water_level_map[i][j] - height_map[i][j]
    end
  end

  trapped_water
end
