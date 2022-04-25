#
# @lc app=leetcode id=125 lang=ruby
#
# [125] Valid Palindrome
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  return false if s.length.zero?
  
  (1...s.size).each do |i|
    p s[i].strip
    p s[i].reverse.strip
  end
end

require 'minitest/autorun'

class IsPalindrome < Minitest::Test
  def test_is_palindrome
    test1 = "A man, a plan, a canal: Panama"
    test2 = "race a car"

    assert_equal true, is_palindrome(test1)
    assert_equal false, is_palindrome(test2)
  end
end
# @lc code=end

