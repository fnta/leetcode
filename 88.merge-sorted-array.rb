#
# @lc app=leetcode id=88 lang=ruby
#
# [88] Merge Sorted Array
#

# @lc code=start
# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
test_nums1 = [1,2,3,0,0,0]
test_m = 3
test_nums2 = [2,5,6]
test_n = 3

def merge(nums1, m, nums2, n)
    i, j, k = m-1, n-1, m+n-1

    until i < 0 || j < 0
      if nums1[i] > nums2[j]
        nums1[k] = nums1[i]
        i -= 1
      else
        nums1[k] = nums2[j]
        j -= 1
      end
      k -= 1
    end
    until j < 0
        nums1[k] = nums2[j]
        k -= 1
        j -= 1
    end    
end

p merge(test_nums1, 3, test_nums2, 3)
# @lc code=end

