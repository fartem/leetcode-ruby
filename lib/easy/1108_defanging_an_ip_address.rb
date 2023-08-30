# frozen_string_literal: true

# https://leetcode.com/problems/defanging-an-ip-address/
# @param {String} address
# @return {String}
def defang_i_paddr(address)
  result = []
  address_p = 0
  while address_p != address.length
    c = address[address_p]
    result << if c == '.'
                '[.]'
              else
                c
              end

    address_p += 1
  end

  result.join
end
