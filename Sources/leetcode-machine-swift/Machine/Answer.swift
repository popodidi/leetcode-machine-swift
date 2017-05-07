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
    
    public func solve<I, O>(_ input: I) throws -> O {
        guard let q = input as? Q else {
            throw "solver with wrong input type"
        }
        guard let a = solver(q) as? O else {
            throw "solver with wrong output type"
        }
        return a 
    }
}
