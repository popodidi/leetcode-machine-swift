//
//  main.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 06/05/2017.
//
//

import Foundation

// set problems
Machine.problems = [
    1: Question(name: "Two Sum", inputs: [([2,7,11,15], 9)], outputs: [[0, 1]], validation: { return compare($0, $1) }),
    476 : Question(name: "Number Complement", inputs: [5, 1], outputs: [2, 0]),
    561 : Question(name: "Array Partition I", inputs: [[1,4,3,2]], outputs: [4])
]

// set solvers
Machine.solvers = [
    1 : answer_1,
    476 : answer_476,
    561 : answer_561
]

// run all problems
Machine.run()

// run specific problem(s)
// Machine.run(1,2,3,4)
