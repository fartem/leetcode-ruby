# frozen_string_literal: true

# https://leetcode.com/problems/count-items-matching-a-rule/
# @param {String[][]} items
# @param {String} rule_key
# @param {String} rule_value
# @return {Integer}
def count_matches(items, rule_key, rule_value)
  matches = 0
  index =
    case rule_key
    when 'color'
      1
    when 'name'
      2
    else
      0
    end

  items.each do |item|
    matches += 1 if rule_value == item[index]
  end

  matches
end
