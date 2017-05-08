//
//  Question.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 06/05/2017.
//
//

import Foundation

public struct Question<I: Any, O: Any>: Problem {
    public var name: String
    var inputs: [I]
    var outputs: [O]
    var validation: (O, O) -> Bool
    
    public init(name: String, inputs: [I], outputs: [O], validation: @escaping (O, O) -> Bool) {
        assert(inputs.count == outputs.count, "The number of inputs and outputs must be equal")
        self.name = name
        self.inputs = inputs
        self.outputs = outputs
        self.validation = validation
    }
    
    // MARK: - Problem
    public func validate(_ solver: ProblemSolver) throws -> String {
        do {
            var allResultStr = ""
            for (index, q) in inputs.enumerated() {
                let result: (answer: O, time: Double) = try solver.solve(q)
                if !validation(result.answer, outputs[index]) {
                    throw "validation: FAIL\n- input    : \(q)\n- output   : \(result.answer)\n- expected : \(outputs[index])"
                } else {
                    allResultStr += (allResultStr == "" ? "" : "\n") + "\n  - input    : \(q)\n  - output   : \(result.answer)\n  - duration : \(result.time) s"
                }
            }
            return allResultStr
        } catch {
            throw error
        }
    }
}

extension Question where O: Equatable {
    public init(name: String, inputs: [I], outputs: [O]) {
        self.init(name: name, inputs: inputs, outputs: outputs, validation: {$0 == $1})
    }
}
