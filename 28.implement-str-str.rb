#
# @lc app=leetcode id=28 lang=ruby
#
# [28] Implement strStr()
#

# @lc code=start
# @param {String} haystack
# @param {String} needle
# @return {Integer}
test_haystack = "hello"
test_needle = "ll"

def str_str(haystack, needle)
    needle.empty? ? 0 : haystack.index(needle) || -1
end

p str_str(test_haystack, test_needle)
# @lc code=end