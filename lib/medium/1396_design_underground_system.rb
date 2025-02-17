# frozen_string_literal: true

# https://leetcode.com/problems/design-underground-system/
class UndergroundSystem
  # Init
  def initialize
    @stations = {}
    @check_ins = {}
  end

  # @param {Integer} id
  # @param {String} station_name
  # @param {Integer} t
  # @return {Void}
  def check_in(id, station_name, t)
    @check_ins[id] = { station_name: station_name, time: t }
  end

  # @param {Integer} id
  # @param {String} station_name
  # @param {Integer} t
  # @return {Void}
  def check_out(id, station_name, t)
    check_in = @check_ins.delete(id)

    name = "#{check_in[:station_name]} -> #{station_name}"

    @stations[name] = [] unless @stations.include?(name)

    @stations[name] << t - check_in[:time]
  end

  # @param {String} start_station
  # @param {String} end_station
  # @return {Float}
  def get_average_time(start_station, end_station)
    times = @stations["#{start_station} -> #{end_station}"]

    times.sum.to_f / times.size
  end
end
