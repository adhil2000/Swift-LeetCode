class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]() // create hashmap
        // scan hashmap
        for (i, num) in nums.enumerated() {
            // match found?
            if let index = dict[target - num] {
                if i != index {
                    return [index, i]
                }
            }
            dict[num] = i
        }
        return[0]
    }
}
