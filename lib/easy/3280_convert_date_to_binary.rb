# frozen_string_literal: true

# https://leetcode.com/problems/convert-date-to-binary/
# @param {String} date
# @return {String}
def convert_date_to_binary(date)
  result = []

  date.split('-').each do |line|
    result << format('%b', line.to_i)
  end

  result.join('-')
end
