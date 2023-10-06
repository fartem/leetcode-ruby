# frozen_string_literal: true

$months = {
  'Jan' => '01',
  'Feb' => '02',
  'Mar' => '03',
  'Apr' => '04',
  'May' => '05',
  'Jun' => '06',
  'Jul' => '07',
  'Aug' => '08',
  'Sep' => '09',
  'Oct' => '10',
  'Nov' => '11',
  'Dec' => '12'
}

# https://leetcode.com/problems/reformat-date/
# @param {String} date
# @return {String}
def reformat_date(date)
  length = date.length

  result = []
  result << date[length - 4, length]
  result << '-'

  space = date.index(' ')

  result << $months[date[space, space + 1].strip]
  result << '-'
  result << if space == 4
              date[0, 2]
            else
              "0#{date[0, 1]}"
            end

  result.join
end
