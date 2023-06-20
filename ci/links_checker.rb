# frozen_string_literal: true

# @param {String} difficulty
def process(difficulty)
  path = "./lib/#{difficulty}"
  solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
  solutions.each do |file_name|
    lines = ::IO.readlines("#{path}/#{file_name}")
    has_comment = false
    lines.each do |line|
      if line.start_with?('# https://leetcode.com/')
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
