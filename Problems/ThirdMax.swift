import Foundation

func thirdMax(_ nums: [Int]) -> Int {
    let nums = Array(Set(nums).sorted(by: >))
    
    return nums.count < 3 ? nums[0] : nums[2]
}

