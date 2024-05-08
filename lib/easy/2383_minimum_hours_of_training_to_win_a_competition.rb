# frozen_string_literal: true

# https://leetcode.com/problems/minimum-hours-of-training-to-win-a-competition/
# @param {Integer} initial_energy
# @param {Integer} initial_experience
# @param {Integer[]} energy
# @param {Integer[]} experience
# @return {Integer}
def min_number_of_hours(
  initial_energy,
  initial_experience,
  energy,
  experience
)
  result = [energy.sum - initial_energy + 1, 0].max
  experience.each do |e|
    if initial_experience <= e
      result += e - initial_experience + 1
      initial_experience = e + 1
    end

    initial_experience += e
  end

  result
end
