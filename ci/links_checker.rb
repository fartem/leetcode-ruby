# frozen_string_literal: true

# @param {String} difficulty
def process(difficulty)
  path = "./lib/#{difficulty}"
  solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
  solutions.each do |file_name|
    lines = ::IO.readlines("#{path}/#{file_name}")
    has_comment = false
    (2...lines.length).each do |i|
      if lines[i].start_with?('# https://leetcode.com/')
        has_comment = true
        break
      end
    end

    unless has_comment
      puts(file_name)
      exit(1)
    end
  end
end

process('easy')
