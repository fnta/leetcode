#
# @lc app=leetcode id=66 lang=ruby
#
# [66] Plus One
#

# @lc code=start
# @param {Integer[]} digits
# @return {Integer[]}
test_digits = [1,2,3]

def plus_one(digits)
    (digits.join.to_i + 1).to_s.chars.map(&:to_i)
end

p plus_one(test_digits)
# @lc code=end

