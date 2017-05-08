//
//  Problem+Solver.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 06/05/2017.
//
//

import Foundation

public protocol Problem {
    var name: String { get }
    
    // return validation details and throw when any of inputs failed in validation
    func validate(_ solver: ProblemSolver) throws -> String
}

public protocol ProblemSolver {
    // return (answer: O, exectuion time: Double)
    func solve<I: Any, O: Any>(_ input: I) throws -> (O, Double)
}
