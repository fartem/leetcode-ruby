# frozen_string_literal: true

# https://leetcode.com/problems/design-parking-system/
class ParkingSystem
  # @param {Integer} big
  # @param {Integer} medium
  # @param {Integer} small
  def initialize(big, medium, small)
    @big = big
    @medium = medium
    @small = small
  end

  # @param {Integer} car_type
  # @return {Boolean}
  def add_car(car_type)
    case car_type
    when 1
      if @big - 1 >= 0
        @big -= 1

        return true
      end
    when 2
      if @medium - 1 >= 0
        @medium -= 1

        return true
      end
    else
      if @small - 1 >= 0
        @small -= 1

        return true
      end
    end

    false
  end
end
