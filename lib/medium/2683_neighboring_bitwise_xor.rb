# frozen_string_literal: true

# https://leetcode.com/problems/neighboring-bitwise-xor/
# @param {Integer[]} derived
# @return {Boolean}
def does_valid_array_exist(derived) = derived.reduce(:^).zero?
