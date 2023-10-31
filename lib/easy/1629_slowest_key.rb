# frozen_string_literal: true

# https://leetcode.com/problems/slowest-key/
# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
  slow = release_times.first
  keys = {}
  keys[slow] = keys_pressed[0]
  (1...release_times.length).each do |i|
    c = keys_pressed[i]
    time = release_times[i] - release_times[i - 1]

    slow = time if time > slow

    next unless time == slow

    exists = keys.fetch(time, '0')

    keys[time] = c if exists == '0' || exists < c
  end

  keys[slow]
end
