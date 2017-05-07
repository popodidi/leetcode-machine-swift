//
//  Machine.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 07/05/2017.
//
//

import Foundation

class Machine {
    // MARK: - data
    static var problems: [Int: Problem] = [:]
    static var solvers: [Int: ProblemSolver] = [:]
    
    // MARK: - run
    static func run() {
        let questions = Array(problems.keys)
        run(questions: questions)
    }
    
    static func run(_ questions: Int ...) {
        run(questions: questions)
    }
    
    // MARK: - private func
    private static func run(questions: [Int]) {
        print("==================================")
        print("===== leetcode-machine-swift =====")
        print("==================================")
        print()
        print("----------------------------------")
        for q in questions {
            do {
                guard let p = problems[q] else {
                    throw"#\(q) problem not fount"
                }
                print("#\(q)", p.name)
                if let solver = solvers[q] {
                    try p.validate(solver)
                    print("validation: PASS")
                } else {
                    throw "solution not fount"
                }
            } catch {
                print(error)
            }
            print("----------------------------------")
        }
    }
}
