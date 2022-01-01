#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
    hash = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }

    total = 0
    i = 0

    while i < s.length
        if i + 1 < s.length && hash[s[i]] < hash[s[i+1]]
            total += hash[s[i+1]] - hash[s[i]]
            i += 1
        else
            total += hash[s[i]]
        end
        
        i += 1
    end

    return total
end
# @lc code=end

