//
//  Calculator.swift
//  Calculator
//
//  Created by erick.borges on 12/11/21.
//

import Foundation

class Calculator {

    private(set) var result: Int = 0

    // MARK: - Operations

    func sum(_ lhs: Int, _ rhs: Int) {
        result = lhs + rhs
    }

    func subtract(_ lhs: Int, _ rhs: Int) {
        result = lhs - rhs
    }

    func multiply(_ lhs: Int, _ rhs: Int) {
        result = lhs * rhs
    }

    func divide(_ lhs: Int, _ rhs: Int) {
        if lhs == 0 && rhs == 0 {
            // 0 / 0 = 1
            result = 1

        } else if lhs == 0 {
            // 0 / X = zero
            result = .zero

        } else if rhs == 0 {
            // X / 0 = infinito
            result = .max

        } else {
            result = lhs / rhs
        }
    }
}
