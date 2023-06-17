# frozen_string_literal: true

# @param {String} difficulty
def process(difficulty)
  path = "./lib/#{difficulty}"
  solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
  solutions.each do |file_name|
    unless ::File.exist?("./test/#{difficulty}/test_#{file_name}")
      puts(file_name)
      exit(1)
    end
  end
end

process('easy')
