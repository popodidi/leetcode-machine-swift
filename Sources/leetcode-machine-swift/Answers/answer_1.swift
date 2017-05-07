//
//  answer_1.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 07/05/2017.
//
//

import Foundation
let answer_1 = Answer { (nums: [Int], target: Int) -> [Int] in
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            if nums[i] + nums[j] == target{
                return [i,j]
            }
        }
    }
    return []
}
