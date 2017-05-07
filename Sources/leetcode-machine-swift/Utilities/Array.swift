//
//  Array.swift
//  leetcode-machine-swift
//
//  Created by Chang, Hao on 07/05/2017.
//
//

import Foundation

func compare<T: Equatable>(_ arr1: Array<T>, _ arr2: Array<T>) -> Bool {
    if arr1.count != arr2.count {
        return false
    }
    for (i, e1) in arr1.enumerated() {
        if e1 != arr2[i] {
            return false
        }
    }
    return true
}
