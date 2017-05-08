//
//  Answer.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 06/05/2017.
//
//

import Foundation

public struct Answer<Q: Any, A: Any>: ProblemSolver {
    var solver: (Q) -> A
    
    public init(_ solver: @escaping (Q) -> A) {
        self.solver = solver
    }
    
    // MARK: - ProblemSolver
    public func solve<I, O>(_ input: I) throws -> (O, Double) {
        guard let q = input as? Q else {
            throw "solver with wrong input type"
        }
        let start = Date()
        let a = solver(q)
        let end = Date()
        guard a is O else {
            throw "solver with wrong output type"
        }
        let executionTime = end.timeIntervalSince(start)
        return ((a as! O), executionTime)
    }
}
