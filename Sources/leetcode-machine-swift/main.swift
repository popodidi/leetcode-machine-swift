//
//  main.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 06/05/2017.
//
//

import Foundation

// set problems
Machine.problems = leetcode

// set solvers
Machine.solvers = [
    1 : answer_1,
    461 : answer_461,
    476 : answer_476,
    561 : answer_561,
    575 : answer_575
]

// run all problems
Machine.runAll(verbose: true)

// run specific problem(s)
// Machine.run(1,2,3,4)
