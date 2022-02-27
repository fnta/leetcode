#
# @lc app=leetcode id=67 lang=ruby
#
# [67] Add Binary
#

# @lc code=start
# @param {String} a
# @param {String} b
# @return {String}
test_a = "11"
test_b = "1"

def add_binary(a, b)
    length = a.size > b.size ? a.size : b.size
    result, carry = [], 0
  
  
    1.upto(length) do |i|
      sum = a[i * -1].to_i + b[i * -1].to_i
      sum += carry
  
      result.unshift((sum % 2).to_s)
      carry = sum / 2
    end
  
    return result.unshift(carry.to_s).join unless carry.zero?
    result.join  
end

p add_binary(test_a,test_b)
# @lc code=end

