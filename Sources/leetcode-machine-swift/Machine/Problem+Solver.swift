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
    func validate(_ solver: ProblemSolver) throws
}

public protocol ProblemSolver {
    func solve<I: Any, O: Any>(_ input: I) throws -> O
}
