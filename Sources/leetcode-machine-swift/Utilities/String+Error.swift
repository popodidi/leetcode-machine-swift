//
//  String+Error.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 07/05/2017.
//
//

import Foundation
extension String: Error {
    public var localizedDescription: String { return self }
}
