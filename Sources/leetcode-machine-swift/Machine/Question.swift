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
    public func validate(_ solver: ProblemSolver) throws {
        do {
            for (index, q) in inputs.enumerated() {
                let answer: O = try solver.solve(q)
                if !validation(answer, outputs[index]) {
                    throw "validation: FAIL\n- input    : \(q)\n- output   : \(answer)\n- expected : \(outputs[index])"
                }
            }
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
