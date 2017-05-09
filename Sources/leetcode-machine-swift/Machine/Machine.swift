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
    static func runAll(verbose: Bool = false) {
        let questions = Array(problems.keys).sorted { $0 < $1 }
        run(questions: questions, verbose: verbose)
    }
    
    static func run(_ questions: Int ..., verbose: Bool = false) {
        run(questions: questions, verbose: verbose)
    }
    
    // MARK: - private func
    private static func run(questions: [Int], verbose: Bool) {
        print("==================================")
        print("===== leetcode-machine-swift =====")
        print("==================================")
        print()
        print("----------------------------------")
        for q in questions {
            do {
                guard let p = problems[q] else {
                    throw"# \(q) problem not fount"
                }
                print("# \(q)", p.name)
                if let solver = solvers[q] {
                    let detail = try p.validate(solver)
                    print("  Validation: PASS")
                    if verbose {
                        print("  Details:", detail)
                    }
                } else {
                    throw "  Validation: FAIL" + (verbose ? "\n  Details\n  - solution not fount" : "")
                }
            } catch {
                print(error)
            }
            print("----------------------------------")
        }
    }
}
