# frozen_string_literal: true

# https://leetcode.com/problems/design-authentication-manager/
class AuthenticationManager
  # @param {Integer} time_to_live
  def initialize(time_to_live)
    @time_to_live = time_to_live
    @auth = {}
    @tokens = ::Set.new
  end

  # @param {String} token_id
  # @param {Integer} current_time
  # @return {Void}
  def generate(token_id, current_time)
    @auth[token_id] = current_time + @time_to_live
    @tokens << token_id
  end

  # @param {String} token_id
  # @param {Integer} current_time
  # @return {Void}
  def renew(token_id, current_time)
    time = @auth.fetch(token_id, 0)

    return unless time > current_time

    generate(token_id, current_time)

    @tokens << token_id
  end

  # @param {Integer} current_time
  # @return {Integer}
  def count_unexpired_tokens(current_time)
    @tokens.count { |token| @auth[token] > current_time }
  end
end
