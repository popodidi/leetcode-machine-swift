//
//  leetcode.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 08/05/2017.
//
//

import Foundation

let leetcode: [Int: Problem] = [
    1 : Question(name: "Two Sum", inputs: [([2,7,11,15], 9)], outputs: [[0, 1]], validation: { return compare($0, $1) }),
    461 : Question(name: " Hamming Distance", inputs: [(1, 4), (3,1)], outputs: [2, 1]),
    476 : Question(name: "Number Complement", inputs: [5, 1], outputs: [2, 0]),
    561 : Question(name: "Array Partition I", inputs: [[1,4,3,2]], outputs: [4]),
    575 : Question(name: "Distribute Candies ", inputs: [[1,1,2,2,3,3], [1,1,2,3], [1,1,1,1,2,2,2,3,3,3], [0,0,0,4], [0,0,14,0,10,0,0,0]], outputs: [3, 2, 3, 2, 3])
]
