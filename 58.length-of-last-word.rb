#
# @lc app=leetcode id=58 lang=ruby
#
# [58] Length of Last Word
#

# @lc code=start
# @param {String} s
# @return {Integer}
test_words = "Hello World"

def length_of_last_word(s)
    s.split.last.size
end

p length_of_last_word(test_words)
# @lc code=end

