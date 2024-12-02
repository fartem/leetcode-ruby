# frozen_string_literal: true

# https://leetcode.com/problems/validate-ip-address/
# @param {String} query_ip
# @return {String}
def valid_ip_address(query_ip) = ipv4(query_ip) || ipv6(query_ip) || 'Neither'

private

def ipv4(ip) = ip =~ /\A((1[0-9]{2}|25[0-5]|2[0-4][0-9]|[1-9][0-9]|[0-9])\.){3}(1[0-9]{2}|25[0-5]|2[0-4][0-9]|[1-9][0-9]|[0-9])\Z/ ? 'IPv4' : nil

def ipv6(ip) = ip.upcase =~ /\A([0-9A-F]{1,4}:){7}([0-9A-F]{1,4})\Z/ ? 'IPv6' : nil
