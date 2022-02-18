#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
test = ["flower","flow","flight"]

def longest_common_prefix(strs)
    return strs[0] if strs.size == 1

    return "" if strs.empty? 
    s = ""
    base = strs[0]

    p base.length-1

    for i in 0..base.length-1
        if strs.all?{|x| x[i] == base[i]}
            s += base[i]
        else
            break
        end
    end
    s
end

p longest_common_prefix(test)
# @lc code=end

